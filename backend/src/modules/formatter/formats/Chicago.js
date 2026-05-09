const formatAutores = (autores) => {
  return autores.map((a, i) => {
    if (i === 0) return `${a.apellido}, ${a.nombre}`
    return `${a.nombre} ${a.apellido}`
  }).join(', ')
}

const libro = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const ciudad = campos.ciudad_publicacion ? `${campos.ciudad_publicacion}: ` : ''
  return `${autores}. ${ref.titulo}. ${ciudad}${campos.editorial}, ${ref.anio}.`
}

const articulo = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const paginas = campos.pagina_inicio && campos.pagina_fin ? `: ${campos.pagina_inicio}-${campos.pagina_fin}` : ''
  const numero = campos.numero ? `, no. ${campos.numero}` : ''
  return `${autores}. "${ref.titulo}." ${campos.nombre_revista} ${campos.volumen}${numero} (${ref.anio})${paginas}.`
}

const sitio_web = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  const acceso = campos.fecha_acceso ? ` Accedido ${campos.fecha_acceso}.` : ''
  return `${autores}. "${ref.titulo}." ${campos.nombre_sitio}.${acceso} ${campos.url}.`
}

const repositorio_electronico = (ref) => {
  const autores = formatAutores(ref.autores)
  const campos = Object.fromEntries(ref.campos.map(c => [c.nombre, c.valor]))
  return `${autores}. "${ref.titulo}." ${campos.institucion}. ${campos.nombre_repositorio}, ${ref.anio}. ${campos.url}.`
}

module.exports = { libro, articulo, sitio_web, repositorio_electronico }