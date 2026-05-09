const formatAutores = (autores) => {
  return autores.map(a => `${a.apellido}, ${a.nombre.charAt(0)}.`).join(', ')
}

const libro = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const ciudad = campos.ciudad_publicacion ? `${campos.ciudad_publicacion}: ` : ''
  return `${autores} (${ref.anio}) ${ref.titulo}. ${ciudad}${campos.editorial}.`
}

const articulo = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const numero = campos.numero ? `(${campos.numero})` : ''
  const paginas = campos.pagina_inicio && campos.pagina_fin ? `, pp. ${campos.pagina_inicio}-${campos.pagina_fin}` : ''
  return `${autores} (${ref.anio}) '${ref.titulo}', ${campos.nombre_revista}, ${campos.volumen}${numero}${paginas}.`
}

const sitio_web = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const acceso = campos.fecha_acceso ? ` (Accessed: ${campos.fecha_acceso})` : ''
  return `${autores} (${ref.anio}) '${ref.titulo}', ${campos.nombre_sitio}. Available at: ${campos.url}${acceso}.`
}

const repositorio_electronico = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores} (${ref.anio}) '${ref.titulo}', ${campos.nombre_repositorio}, ${campos.institucion}. Available at: ${campos.url}.`
}

module.exports = { libro, articulo, sitio_web, repositorio_electronico }