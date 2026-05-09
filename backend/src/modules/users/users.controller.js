const { getAll, changeRol, remove } = require('./users.service')
const { changeRolSchema } = require('./users.schema')

const getAllController = async (req, res) => {
  try {
    const usuarios = await getAll()
    res.status(200).json(usuarios)
  } catch (error) {
    res.status(500).json({ message: error.message })
  }
}

const changeRolController = async (req, res) => {
  try {
    const data = changeRolSchema.parse(req.body)
    const usuario = await changeRol(req.params.id, data.rol)
    res.status(200).json({ message: 'Rol actualizado correctamente', usuario })
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

const removeController = async (req, res) => {
  try {
    await remove(req.params.id)
    res.status(200).json({ message: 'Usuario eliminado correctamente' })
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

module.exports = { getAllController, changeRolController, removeController }