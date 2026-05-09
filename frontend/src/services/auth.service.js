import { apiFetch } from './api.js'

export const login = async (correo_electronico, contrasena) => {
  const data = await apiFetch('/auth/login', {
    method: 'POST',
    body: JSON.stringify({ correo_electronico, contrasena })
  })

  localStorage.setItem('token', data.token)
  localStorage.setItem('rol', data.rol)
  localStorage.setItem('nombre', data.nombre)

  return data
}

export const register = async (usuario) => {
  return await apiFetch('/auth/register', {
    method: 'POST',
    body: JSON.stringify(usuario)
  })
}

export const logout = () => {
  localStorage.removeItem('token')
  localStorage.removeItem('rol')
  localStorage.removeItem('nombre')
  window.location.href = '/auth/login'
}

export const isAuthenticated = () => {
  return !!localStorage.getItem('token')
}

export const getRol = () => {
  return localStorage.getItem('rol')
}

export const getNombre = () => {
  return localStorage.getItem('nombre')
}