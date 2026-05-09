import { apiFetch } from './api.js'

export const getAll = async (filtros = {}) => {
  const params = new URLSearchParams(filtros).toString()
  return await apiFetch(`/references${params ? '?' + params : ''}`)
}

export const getById = async (id) => {
  return await apiFetch(`/references/${id}`)
}

export const create = async (referencia) => {
  return await apiFetch('/references', {
    method: 'POST',
    body: JSON.stringify(referencia)
  })
}

export const update = async (id, referencia) => {
  return await apiFetch(`/references/${id}`, {
    method: 'PUT',
    body: JSON.stringify(referencia)
  })
}

export const remove = async (id) => {
  return await apiFetch(`/references/${id}`, {
    method: 'DELETE'
  })
}