export const API_URL = 'http://localhost:3000/api'

export const getHeaders = () => {
  const token = localStorage.getItem('token')
  return {
    'Content-Type': 'application/json',
    ...(token && { Authorization: `Bearer ${token}` })
  }
}

export const apiFetch = async (endpoint, options = {}) => {
  const res = await fetch(`${API_URL}${endpoint}`, {
    ...options,
    headers: getHeaders()
  })

  const data = await res.json()

  if (!res.ok) throw new Error(data.message || 'Error en la petición')

  return data
}