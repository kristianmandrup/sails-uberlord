module.exports =
  schema: true
  attributes: 	    
    username:
      type:             'STRING'
      required:         true

    email:
      type:             'EMAIL'
      required:         true
      unique:           true

    birthDate:          'DATE'
    encryptedPassword:  
      type:             'STRING'
      required:         true
      index:
        unique:         true

