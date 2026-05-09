const { z } = require('zod')

const referenciaBaseSchema = z.object({
  titulo: z.string().min(1),
  anio: z.number().int().min(1000).max(2100).optional(),
  tipo_referencia_id: z.number().int(),
  publica: z.boolean().optional().default(false),
  autores: z.array(z.object({
    nombre: z.string().min(1),
    apellido: z.string().min(1),
    orden: z.number().int().optional()
  })).min(1),
  tema_id: z.number().int().optional(),
  campos: z.array(z.object({
    campo_id: z.number().int(),
    valor: z.string().min(1)
  })).optional()
})

module.exports = { referenciaBaseSchema }