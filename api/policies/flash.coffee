module.exports = (req, res, next) ->
  res.locals.flash = {}
  next() if not req.session.flash

  res.locals.flash = _.clone req.session.flash  
  req.session.flash = {}
  next()
