Rails.application.routes.draw do

  root "registration#login"  # equals to writing [get '/', to: 'registration#login']
  # get 'donx/home'
  # get 'anything',to: 'registration#signup'
  # get '/anything/',to: 'registration#signup'
  get '/about', to: 'donx#about'  # and get 'about', to: 'donx#about' are same
  get '/home' , to: 'donx#home'

  get 'registration/login' 
  get 'registration/signup'

  post '/registration', to: 'registration#create'
  # post '/', to: 'registration#create'   you should provide root_path as helper url

end


# when we type just  [get 'registration/login'] the request format is like localhost:3000/registration/login and it automatically directs to registration controller then login action and login action conventionally loads login view.
# when we type [get '/anything/',to: 'registration#signup'] the request format is like localhost:3000/anything and it manually directs to registration controller then login action and login action conventionally loads login view.