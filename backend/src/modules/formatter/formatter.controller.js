const { formatear } = require('./formatter.service')
const { getById } = require('../references/references.service')

const formatearController = async (req, res) => {
  try {
    const { id } = req.params
    const { formato } = req.query

    if (!formato) return res.status(400).json({ message: 'formato es requerido' })

    const ref = await getById(id, req.usuario.id)
    const cita = formatear(ref, formato.toLowerCase())

    res.status(200).json({ cita })
  } catch (error) {
    res.status(400).json({ message: error.message })
  }
}

module.exports = { formatearController }