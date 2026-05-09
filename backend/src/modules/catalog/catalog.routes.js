const router = require('express').Router()
const { getAreasController, createAreaController, getAsignaturasController, createAsignaturaController, getTemasController, createTemaController } = require('./catalog.controller')
const authMiddleware = require('../../middlewares/auth.middleware')

router.get('/areas', authMiddleware, getAreasController)
router.post('/areas', authMiddleware, createAreaController)

router.get('/asignaturas', authMiddleware, getAsignaturasController)
router.post('/asignaturas', authMiddleware, createAsignaturaController)

router.get('/temas', authMiddleware, getTemasController)
router.post('/temas', authMiddleware, createTemaController)

module.exports = router