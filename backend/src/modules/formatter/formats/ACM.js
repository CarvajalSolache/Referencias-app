const formatAutores = (autores) => {
  return autores.map(a => `${a.apellido}, ${a.nombre.charAt(0)}.`).join(', ')
}

const libro = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores} ${ref.anio}. ${ref.titulo}. ${campos.editorial}.`
}

const articulo = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const paginas = campos.pagina_inicio && campos.pagina_fin ? `, ${campos.pagina_inicio}-${campos.pagina_fin}` : ''
  return `${autores} ${ref.anio}. ${ref.titulo}. ${campos.nombre_revista} ${campos.volumen}, ${campos.numero} (${ref.anio})${paginas}.`
}

const sitio_web = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const acceso = campos.fecha_acceso ? ` (Accedido: ${campos.fecha_acceso})` : ''
  return `${autores} ${ref.anio}. ${ref.titulo}. Recuperado de ${campos.url}${acceso}.`
}

const repositorio_electronico = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores} ${ref.anio}. ${ref.titulo}. ${campos.institucion}. Recuperado de ${campos.url}.`
}

module.exports = { libro, articulo, sitio_web, repositorio_electronico }