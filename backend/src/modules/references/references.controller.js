const { getAll, getById, create, update, remove } = require('./references.service')
const { referenciaBaseSchema } = require('./references.schema')

const getAllController = async (req, res) => {
  try {
    const referencias = await getAll(req.usuario.id, req.query)
    res.status(200).json(referencias)
  } catch (error) {
    res.status(500).json({ message: error.message })
  }
}

const getByIdController = async (req, res) => {
  try {
    const referencia = await getById(req.params.id, req.usuario.id)
    res.status(200).json(referencia)
  } catch (error) {
    res.status(404).json({ message: error.message })
  }
}

const createController = async (req, res) => {
  try {
    const data = referenciaBaseSchema.parse(req.body)
    const referencia = await create(data, req.usuario.id)
    res.status(201).json({ message: 'Referencia creada correctamente', referencia })
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

const updateController = async (req, res) => {
  try {
    const data = referenciaBaseSchema.parse(req.body)
    const referencia = await update(req.params.id, data, req.usuario.id, req.usuario.rol)
    res.status(200).json({ message: 'Referencia actualizada correctamente', referencia })
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

const removeController = async (req, res) => {
  try {
    await remove(req.params.id)
    res.status(200).json({ message: 'Referencia eliminada correctamente' })
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

module.exports = { getAllController, getByIdController, createController, updateController, removeController }