/**
 * User
 *
 * @module      :: Model
 * @description :: A short summary of how this model works and what it represents.
 * @docs		:: http://sailsjs.org/#!documentation/models
 */

module.exports = {

  attributes: {  	    
    name	: {
      type:     'STRING',
      required: true
    },
    email: {
      type:     'EMAIL',
      required: true,
      unique:   true
    },
    birthDate:  'DATE',
    password:   'STRING'
  }

};
