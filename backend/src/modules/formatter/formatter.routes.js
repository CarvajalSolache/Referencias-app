const router = require('express').Router()
const { formatearController } = require('./formatter.controller')
const authMiddleware = require('../../middlewares/auth.middleware')

router.get('/:id', authMiddleware, formatearController)

module.exports = router