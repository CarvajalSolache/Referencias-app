const router = require('express').Router()
const { getAllController, getByIdController, createController, updateController, removeController } = require('./references.controller')
const authMiddleware = require('../../middlewares/auth.middleware')
const roleMiddleware = require('../../middlewares/role.middleware')

router.get('/', authMiddleware, getAllController)
router.get('/:id', authMiddleware, getByIdController)
router.post('/', authMiddleware, createController)
router.put('/:id', authMiddleware, updateController)
router.delete('/:id', authMiddleware, roleMiddleware(['admin']), removeController)

module.exports = router