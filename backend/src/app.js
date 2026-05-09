const express = require('express')
const cors = require('cors')
require('dotenv').config()

const authRoutes = require('./modules/auth/auth.routes')
const usersRoutes = require('./modules/users/users.routes')
const referencesRoutes = require('./modules/references/references.routes')
const formatterRoutes = require('./modules/formatter/formatter.routes')
const catalogRoutes = require('./modules/catalog/catalog.routes')

const app = express()

// Middlewares globales
app.use(cors())
app.use(express.json())

// Rutas
app.use('/api/auth', authRoutes)
app.use('/api/users', usersRoutes)
app.use('/api/references', referencesRoutes)
app.use('/api/formatter', formatterRoutes)
app.use('/api/catalog', catalogRoutes)

// Ruta de prueba
app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', message: 'Servidor corriendo' })
})

const PORT = process.env.PORT || 3000
app.listen(PORT, () => {
  console.log(`Servidor corriendo en puerto ${PORT}`)
})