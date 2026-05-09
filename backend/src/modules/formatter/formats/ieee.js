const formatAutores = (autores) => {
  return autores.map(a => `${a.nombre.charAt(0)}. ${a.apellido}`).join(', ')
}

const libro = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores}, ${ref.titulo}. ${campos.editorial}, ${ref.anio}.`
}

const articulo = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const volumen = campos.volumen ? `, vol. ${campos.volumen}` : ''
  const numero = campos.numero ? `, no. ${campos.numero}` : ''
  const paginas = campos.pagina_inicio && campos.pagina_fin ? `, pp. ${campos.pagina_inicio}-${campos.pagina_fin}` : ''
  return `${autores}, "${ref.titulo}," ${campos.nombre_revista}${volumen}${numero}${paginas}, ${ref.anio}.`
}

const sitio_web = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const acceso = campos.fecha_acceso ? `[Accessed: ${campos.fecha_acceso}]` : ''
  return `${autores}, "${ref.titulo}," ${campos.nombre_sitio}. [Online]. Available: ${campos.url}. ${acceso}.`
}

const repositorio_electronico = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores}, "${ref.titulo}," ${campos.nombre_repositorio}, ${campos.institucion}, ${ref.anio}. [Online]. Available: ${campos.url}.`
}

module.exports = { libro, articulo, sitio_web, repositorio_electronico }