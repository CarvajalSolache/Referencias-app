const pool = require('../../config/db')

// Areas
const getAreas = async () => {
  const [rows] = await pool.query('SELECT * FROM areas ORDER BY nombre')
  return rows
}

const createArea = async (nombre) => {
  const [existing] = await pool.query('SELECT id FROM areas WHERE nombre = ?', [nombre])
  if (existing.length > 0) throw new Error('El área ya existe')

  const [result] = await pool.query('INSERT INTO areas (nombre) VALUES (?)', [nombre])
  return { id: result.insertId, nombre }
}

// Asignaturas
const getAsignaturas = async (area_id) => {
  const [rows] = await pool.query(
    'SELECT * FROM asignaturas WHERE area_id = ? ORDER BY nombre',
    [area_id]
  )
  return rows
}

const createAsignatura = async (nombre, area_id) => {
  const [existing] = await pool.query(
    'SELECT id FROM asignaturas WHERE nombre = ? AND area_id = ?',
    [nombre, area_id]
  )
  if (existing.length > 0) throw new Error('La asignatura ya existe en esta área')

  const [result] = await pool.query(
    'INSERT INTO asignaturas (nombre, area_id) VALUES (?, ?)',
    [nombre, area_id]
  )
  return { id: result.insertId, nombre, area_id }
}

// Temas
const getTemas = async (asignatura_id) => {
  const [rows] = await pool.query(
    'SELECT * FROM temas WHERE asignatura_id = ? ORDER BY nombre',
    [asignatura_id]
  )
  return rows
}

const createTema = async (nombre, asignatura_id) => {
  const [existing] = await pool.query(
    'SELECT id FROM temas WHERE nombre = ? AND asignatura_id = ?',
    [nombre, asignatura_id]
  )
  if (existing.length > 0) throw new Error('El tema ya existe en esta asignatura')

  const [result] = await pool.query(
    'INSERT INTO temas (nombre, asignatura_id) VALUES (?, ?)',
    [nombre, asignatura_id]
  )
  return { id: result.insertId, nombre, asignatura_id }
}

module.exports = { getAreas, createArea, getAsignaturas, createAsignatura, getTemas, createTema }