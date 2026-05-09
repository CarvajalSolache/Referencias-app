const apa = require('./formats/apa')
const ieee = require('./formats/ieee')
const acm = require('./formats/ACM')
const chicago = require('./formats/chicago')
const harvard = require('./formats/harvard')

const formatos = { apa, ieee, acm, chicago, harvard }

const formatear = (ref, formato) => {
  const formateador = formatos[formato]
  if (!formateador) throw new Error(`Formato ${formato} no soportado`)

  const tipo = ref.tipo.replace(' ', '_').toLowerCase()
  const funcion = formateador[tipo]
  if (!funcion) throw new Error(`Tipo ${tipo} no soportado para formato ${formato}`)

  return funcion(ref)
}

module.exports = { formatear }