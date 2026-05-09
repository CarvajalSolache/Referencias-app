const { z } = require('zod')

const registerSchema = z.object({
  nombre_usuario: z.string().min(3),
  correo_electronico: z.string().email(),
  contrasena: z.string().min(6),
  nombre: z.string().optional(),
  apellido: z.string().optional()
})

const loginSchema = z.object({
  correo_electronico: z.string().email(),
  contrasena: z.string().min(1)
})

module.exports = { registerSchema, loginSchema }