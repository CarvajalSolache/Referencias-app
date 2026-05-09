import { apiFetch } from './api.js'

// Areas
export const getAreas = async () => {
  return await apiFetch('/catalog/areas')
}

export const createArea = async (nombre) => {
  return await apiFetch('/catalog/areas', {
    method: 'POST',
    body: JSON.stringify({ nombre })
  })
}

// Asignaturas
export const getAsignaturas = async (area_id) => {
  return await apiFetch(`/catalog/asignaturas?area_id=${area_id}`)
}

export const createAsignatura = async (nombre, area_id) => {
  return await apiFetch('/catalog/asignaturas', {
    method: 'POST',
    body: JSON.stringify({ nombre, area_id })
  })
}

// Temas
export const getTemas = async (asignatura_id) => {
  return await apiFetch(`/catalog/temas?asignatura_id=${asignatura_id}`)
}

export const createTema = async (nombre, asignatura_id) => {
  return await apiFetch('/catalog/temas', {
    method: 'POST',
    body: JSON.stringify({ nombre, asignatura_id })
  })
}