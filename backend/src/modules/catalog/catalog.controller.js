const { getAreas, createArea, getAsignaturas, createAsignatura, getTemas, createTema } = require('./catalog.service')

const getAreasController = async (req, res) => {
  try {
    const areas = await getAreas()
    res.status(200).json(areas)
  } catch (error) {
    res.status(500).json({ message: error.message })
  }
}

const createAreaController = async (req, res) => {
  try {
    const { nombre } = req.body
    if (!nombre) return res.status(400).json({ message: 'El nombre es requerido' })
    const area = await createArea(nombre)
    res.status(201).json(area)
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

const getAsignaturasController = async (req, res) => {
  try {
    const { area_id } = req.query
    if (!area_id) return res.status(400).json({ message: 'area_id es requerido' })
    const asignaturas = await getAsignaturas(area_id)
    res.status(200).json(asignaturas)
  } catch (error) {
    res.status(500).json({ message: error.message })
  }
}

const createAsignaturaController = async (req, res) => {
  try {
    const { nombre, area_id } = req.body
    if (!nombre || !area_id) return res.status(400).json({ message: 'nombre y area_id son requeridos' })
    const asignatura = await createAsignatura(nombre, area_id)
    res.status(201).json(asignatura)
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

const getTemasController = async (req, res) => {
  try {
    const { asignatura_id } = req.query
    if (!asignatura_id) return res.status(400).json({ message: 'asignatura_id es requerido' })
    const temas = await getTemas(asignatura_id)
    res.status(200).json(temas)
  } catch (error) {
    res.status(500).json({ message: error.message })
  }
}

const createTemaController = async (req, res) => {
  try {
    const { nombre, asignatura_id } = req.body
    if (!nombre || !asignatura_id) return res.status(400).json({ message: 'nombre y asignatura_id son requeridos' })
    const tema = await createTema(nombre, asignatura_id)
    res.status(201).json(tema)
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

module.exports = { getAreasController, createAreaController, getAsignaturasController, createAsignaturaController, getTemasController, createTemaController }