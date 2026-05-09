const formatAutores = (autores) => {
  return autores.map(a => `${a.apellido}, ${a.nombre.charAt(0)}.`).join(', ')
}

const libro = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores} (${ref.anio}). ${ref.titulo}. ${campos.editorial}.`
}

const articulo = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const paginas = campos.pagina_inicio && campos.pagina_fin ? `, ${campos.pagina_inicio}-${campos.pagina_fin}` : ''
  const numero = campos.numero ? `(${campos.numero})` : ''
  return `${autores} (${ref.anio}). ${ref.titulo}. ${campos.nombre_revista}, ${campos.volumen}${numero}${paginas}.`
}

const sitio_web = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores} (${ref.anio}). ${ref.titulo}. ${campos.nombre_sitio}. ${campos.url}`
}

const repositorio_electronico = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores} (${ref.anio}). ${ref.titulo}. ${campos.nombre_repositorio}. ${campos.url}`
}

module.exports = { libro, articulo, sitio_web, repositorio_electronico }