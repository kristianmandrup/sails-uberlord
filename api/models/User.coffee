module.exports =
  schema: true
  attributes: 	    
    name:
      type:             'STRING'
      required:         true

    email:
      type:             'EMAIL'
      required:         true
      unique:           true

    birthDate:          'DATE'
    encryptedPassword:  'STRING'
