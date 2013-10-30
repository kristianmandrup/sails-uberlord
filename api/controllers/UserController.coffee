var bcrypt = require('bcrypt')
  , SALT_WORK_FACTOR = 10
  , MIN_PASSWORD_LENGTH = 8;

var createUser = (hash) ->
  User.create(
    username:           req.param('username'),
    email:              req.param('email'),
    encryptedPassword:  hash
  ).done(
    (err,user) ->
      if (err) throw err;
        res.json(user);
  );

var UserController = {
  _config: {}
  create: (req,res) ->
    try {
      if not req.param('password') || req.param('password').length < MIN_PASSWORD_LENGTH
        throw new Error "password not sent or doesn't meet length requirement " + MIN_PASSWORD_LENGTH + " chars)"
      }

      bcrypt.hash(req.param('password'),SALT_WORK_FACTOR, (err, hash) ->
        if err throw err;
        
        createUser(hash);
      );

    } catch (e) {
      res.json({error: e.message}, 500);
    }
  }
};

module.exports = UserController;