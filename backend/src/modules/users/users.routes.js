const router = require('express').Router()
const { getAllController, changeRolController, removeController } = require('./users.controller')
const authMiddleware = require('../../middlewares/auth.middleware')
const roleMiddleware = require('../../middlewares/role.middleware')

router.get('/', authMiddleware, roleMiddleware(['admin']), getAllController)
router.put('/:id/rol', authMiddleware, roleMiddleware(['admin']), changeRolController)
router.delete('/:id', authMiddleware, roleMiddleware(['admin']), removeController)

module.exports = router