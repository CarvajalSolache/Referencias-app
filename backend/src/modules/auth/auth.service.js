const pool = require('../../config/db')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')

const register = async ({ nombre_usuario, correo_electronico, contrasena, nombre, apellido }) => {
  // Verificar si el usuario ya existe
  const [existing] = await pool.query(
    'SELECT id FROM usuarios WHERE correo_electronico = ? OR nombre_usuario = ?',
    [correo_electronico, nombre_usuario]
  )

  if (existing.length > 0) {
    throw new Error('El correo o nombre de usuario ya está en uso')
  }

  // Encriptar contraseña
  const contrasena_hash = await bcrypt.hash(contrasena, 10)

  // Insertar usuario
  const [result] = await pool.query(
    'INSERT INTO usuarios (nombre_usuario, correo_electronico, contrasena_hash, rol, nombre, apellido) VALUES (?, ?, ?, ?, ?, ?)',
    [nombre_usuario, correo_electronico, contrasena_hash, 'usuario', nombre, apellido]
  )

  return { id: result.insertId, nombre_usuario, correo_electronico }
}

const login = async ({ correo_electronico, contrasena }) => {
  // Buscar usuario
  const [rows] = await pool.query(
    'SELECT * FROM usuarios WHERE correo_electronico = ?',
    [correo_electronico]
  )

  if (rows.length === 0) {
    throw new Error('Credenciales inválidas')
  }

  const usuario = rows[0]

  // Verificar contraseña
  const valid = await bcrypt.compare(contrasena, usuario.contrasena_hash)
  if (!valid) {
    throw new Error('Credenciales inválidas')
  }

  // Generar token
  const token = jwt.sign(
    { id: usuario.id, rol: usuario.rol },
    process.env.JWT_SECRET,
    { expiresIn: '8h' }
  )

  return { token, rol: usuario.rol, nombre: usuario.nombre }
}

module.exports = { register, login }