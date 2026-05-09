const roleMiddleware = (roles) => {
  return (req, res, next) => {
    if (!roles.includes(req.usuario.rol)) {
      return res.status(403).json({ message: 'No tienes permisos para realizar esta acción' })
    }
    next()
  }
}

module.exports = roleMiddleware