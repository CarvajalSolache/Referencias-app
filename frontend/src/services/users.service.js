import { apiFetch } from './api.js'

export const getAll = async () => {
  return await apiFetch('/users')
}

export const changeRol = async (id, rol) => {
  return await apiFetch(`/users/${id}/rol`, {
    method: 'PUT',
    body: JSON.stringify({ rol })
  })
}

export const remove = async (id) => {
  return await apiFetch(`/users/${id}`, {
    method: 'DELETE'
  })
}