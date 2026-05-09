const { register, login } = require('./auth.service')
const { registerSchema, loginSchema } = require('./auth.schema')

const registerController = async (req, res) => {
  try {
    // Validar datos con Zod
    const data = registerSchema.parse(req.body)

    const usuario = await register(data)

    res.status(201).json({
      message: 'Usuario registrado correctamente',
      usuario
    })
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

const loginController = async (req, res) => {
  try {
    // Validar datos con Zod
    const data = loginSchema.parse(req.body)

    const result = await login(data)

    res.status(200).json(result)
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

module.exports = { registerController, loginController }