const pool = require('../../config/db')

const getAll = async () => {
  const [rows] = await pool.query(
    `SELECT id, nombre_usuario, correo_electronico, rol, nombre, apellido, fecha_creacion
     FROM usuarios
     ORDER BY fecha_creacion DESC`
  )
  return rows
}

const changeRol = async (id, rol) => {
  const [existing] = await pool.query('SELECT id FROM usuarios WHERE id = ?', [id])
  if (existing.length === 0) throw new Error('Usuario no encontrado')

  await pool.query('UPDATE usuarios SET rol = ? WHERE id = ?', [rol, id])
  return { id, rol }
}

const remove = async (id) => {
  const [existing] = await pool.query('SELECT id FROM usuarios WHERE id = ?', [id])
  if (existing.length === 0) throw new Error('Usuario no encontrado')

  await pool.query('DELETE FROM usuarios WHERE id = ?', [id])
  return { id }
}

module.exports = { getAll, changeRol, remove }