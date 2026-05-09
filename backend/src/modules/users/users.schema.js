const { z } = require('zod')

const changeRolSchema = z.object({
  rol: z.enum(['admin', 'usuario'])
})

module.exports = { changeRolSchema }