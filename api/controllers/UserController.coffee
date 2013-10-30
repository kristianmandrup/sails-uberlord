module.exports =
  _config: {}
  'new': (req, res) ->
    res.view()
  'create': (req, res, next) ->
    User.create req.params.all(), (err, user) ->
      if err 
        next(err)
      res.json(user)
