Authentication login:

Impact to database:

  -> a new model, user, email

What urls do I need?
  -> a signup url
    GET /users/new => UsersController#new
      -form
    POST /users => UsersController#create
      -create the user into the db

  -> a login url
    GET /login => Sessions#new
      -form
    POST /sessions => Sessions#create
      -log the user in....
