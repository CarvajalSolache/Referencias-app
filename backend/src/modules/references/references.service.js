const pool = require('../../config/db')

const getAll = async (usuario_id, filtros = {}) => {
  let query = `
    SELECT r.id, r.titulo, r.anio, r.publica, r.fecha_creacion,
           tr.nombre AS tipo,
           GROUP_CONCAT(CONCAT(a.nombre, ' ', a.apellido) ORDER BY ra.orden SEPARATOR ', ') AS autores,
           u.nombre_usuario AS agregado_por
    FROM referencias r
    JOIN tipos_referencia tr ON r.tipo_referencia_id = tr.id
    JOIN usuarios u ON r.usuario_id = u.id
    LEFT JOIN referencia_autores ra ON r.id = ra.referencia_id
    LEFT JOIN autores a ON ra.autor_id = a.id
    WHERE 1=1
  `
  const params = []

  if (filtros.tipo_referencia_id) {
    query += ' AND r.tipo_referencia_id = ?'
    params.push(filtros.tipo_referencia_id)
  }

  if (filtros.anio) {
    query += ' AND r.anio = ?'
    params.push(filtros.anio)
  }

  if (filtros.titulo) {
    query += ' AND r.titulo LIKE ?'
    params.push(`%${filtros.titulo}%`)
  }

  query += ' GROUP BY r.id ORDER BY r.fecha_creacion DESC'

  const [rows] = await pool.query(query, params)
  return rows
}

const getById = async (id, usuario_id) => {
  const [rows] = await pool.query(
    `SELECT r.id, r.titulo, r.anio, r.publica, r.fecha_creacion,
            tr.nombre AS tipo, tr.id AS tipo_referencia_id,
            r.usuario_id, u.nombre_usuario AS agregado_por
     FROM referencias r
     JOIN tipos_referencia tr ON r.tipo_referencia_id = tr.id
     JOIN usuarios u ON r.usuario_id = u.id
     WHERE r.id = ?`,
    [id]
  )

  if (rows.length === 0) throw new Error('Referencia no encontrada')

  const referencia = rows[0]

  const [autores] = await pool.query(
    `SELECT a.id, a.nombre, a.apellido, ra.orden
     FROM autores a
     JOIN referencia_autores ra ON a.id = ra.autor_id
     WHERE ra.referencia_id = ?
     ORDER BY ra.orden`,
    [id]
  )

  const [campos] = await pool.query(
    `SELECT c.nombre, vcr.valor
     FROM valores_campos_referencia vcr
     JOIN campos c ON vcr.campo_id = c.id
     WHERE vcr.referencia_id = ?`,
    [id]
  )

  const [temas] = await pool.query(
    `SELECT t.id, t.nombre, t.asignatura_id, a.nombre AS asignatura, a.area_id, ar.nombre AS area
     FROM referencia_temas rt
     JOIN temas t ON rt.tema_id = t.id
     JOIN asignaturas a ON t.asignatura_id = a.id
     JOIN areas ar ON a.area_id = ar.id
     WHERE rt.referencia_id = ?`,
    [id]
  )

  return { ...referencia, autores, campos, tema: temas[0] || null }
}

const create = async (data, usuario_id) => {
  const conn = await pool.getConnection()
  try {
    await conn.beginTransaction()

    // Insertar referencia
    const [result] = await conn.query(
      'INSERT INTO referencias (tipo_referencia_id, usuario_id, titulo, anio, publica) VALUES (?, ?, ?, ?, ?)',
      [data.tipo_referencia_id, usuario_id, data.titulo, data.anio, data.publica ? 1 : 0]
    )
    const referencia_id = result.insertId

    // Insertar autores
    for (let i = 0; i < data.autores.length; i++) {
      const autor = data.autores[i]
      const [autorResult] = await conn.query(
        'INSERT INTO autores (nombre, apellido) VALUES (?, ?)',
        [autor.nombre, autor.apellido]
      )
      await conn.query(
        'INSERT INTO referencia_autores (referencia_id, autor_id, orden) VALUES (?, ?, ?)',
        [referencia_id, autorResult.insertId, i + 1]
      )
    }

    // Insertar campos
    if (data.campos && data.campos.length > 0) {
      for (const campo of data.campos) {
        await conn.query(
          'INSERT INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES (?, ?, ?)',
          [referencia_id, campo.campo_id, campo.valor]
        )
      }
    }

    // Insertar tema
    if (data.tema_id) {
      await conn.query(
        'INSERT INTO referencia_temas (referencia_id, tema_id) VALUES (?, ?)',
        [referencia_id, data.tema_id]
      )
    }

    await conn.commit()
    return { id: referencia_id }
  } catch (error) {
    await conn.rollback()
    throw error
  } finally {
    conn.release()
  }
}

const update = async (id, data, usuario_id, rol) => {
  const conn = await pool.getConnection()
  try {
    await conn.beginTransaction()

    // Si no es admin verificar que sea el dueño
    if (rol !== 'admin') {
      const [existing] = await conn.query(
        'SELECT id FROM referencias WHERE id = ? AND usuario_id = ?',
        [id, usuario_id]
      )
      if (existing.length === 0) throw new Error('No tienes permiso para editar esta referencia')
    }

    // Actualizar referencia
    await conn.query(
      'UPDATE referencias SET titulo = ?, anio = ?, publica = ? WHERE id = ?',
      [data.titulo, data.anio, data.publica ? 1 : 0, id]
    )

    // Eliminar autores anteriores y reinsertar
    await conn.query('DELETE FROM referencia_autores WHERE referencia_id = ?', [id])
    for (let i = 0; i < data.autores.length; i++) {
      const autor = data.autores[i]
      const [existingAutor] = await conn.query(
        `SELECT id
        FROM autores
        WHERE nombre = ?
        AND IFNULL(segundo_nombre, '') = IFNULL(?, '')
        AND apellido = ?
        AND IFNULL(credenciales, '') = IFNULL(?, '')
        LIMIT 1`,
        [
          autor.nombre,
          autor.segundo_nombre || '',
          autor.apellido,
          autor.credenciales || ''
        ]
      )

      let autorId

      if (existingAutor.length > 0) {

        autorId = existingAutor[0].id

      } else {

        const [autorResult] = await conn.query(
          `INSERT INTO autores
          (nombre, segundo_nombre, apellido, credenciales)
          VALUES (?, ?, ?, ?)`,
          [
            autor.nombre,
            autor.segundo_nombre || null,
            autor.apellido,
            autor.credenciales || null
          ]
        )

        autorId = autorResult.insertId
      }
      await conn.query(
        'INSERT INTO referencia_autores (referencia_id, autor_id, orden) VALUES (?, ?, ?)',
        [id, autorId, i + 1]
      )
    }

    // Actualizar campos
    await conn.query('DELETE FROM valores_campos_referencia WHERE referencia_id = ?', [id])
    if (data.campos && data.campos.length > 0) {
      for (const campo of data.campos) {
        await conn.query(
          'INSERT INTO valores_campos_referencia (referencia_id, campo_id, valor) VALUES (?, ?, ?)',
          [id, campo.campo_id, campo.valor]
        )
      }
    }

    // Actualizar tema
    await conn.query('DELETE FROM referencia_temas WHERE referencia_id = ?', [id])
    if (data.tema_id) {
      await conn.query(
        'INSERT INTO referencia_temas (referencia_id, tema_id) VALUES (?, ?)',
        [id, data.tema_id]
      )
    }

    await conn.commit()
    return { id }
  } catch (error) {
    await conn.rollback()
    throw error
  } finally {
    conn.release()
  }
}

const remove = async (id) => {
  const [existing] = await pool.query(
    'SELECT id FROM referencias WHERE id = ?', [id]
  )
  if (existing.length === 0) throw new Error('Referencia no encontrada')

  await pool.query('DELETE FROM referencias WHERE id = ?', [id])
  return { id }
}

module.exports = { getAll, getById, create, update, remove }