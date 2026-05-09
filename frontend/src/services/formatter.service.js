import { apiFetch } from './api.js'

export const formatear = async (id, formato) => {
  return await apiFetch(`/formatter/${id}?formato=${formato}`)
}