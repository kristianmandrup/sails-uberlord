module.exports =
  _config: {}
  'new': (req, res) ->
    res.view()

  'create': (req, res, next) ->
    User.create req.params.all(), (err, user) ->
      if err
        console.log("ERROR", err)
        req.session.flash =
          err: err

        res.redirect('user/new')
      
      res.json(user)
