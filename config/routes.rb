Rails.application.routes.draw do
  devise_for :users
  
  root :to => redirect('/users/sign_up')

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/', to:'home#index'
  post '/', to:'home#index'
  get'/form', to:'home#form'
  post '/create', to: 'home#create'
  get '/list', to: 'home#list'
  get '/modify/:id', to: 'home#modify'
  post '/update/:id', to: 'home#update'
  get '/delete/:id', to: 'home#delete'
  # Defines the root path route ("/")
  # root "articles#index"
end
