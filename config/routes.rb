ThisBugsMe::Application.routes.draw do

  root 'drawers#index'
  
  post '/drawers/:name/newrecord' => 'drawers#new_record'

  get 'record/:id/newbox/:boxnum' => 'containers#new'

  get '/jsonify' => 'drawers#jsonify'

  resources :connections, only: [:destroy]
  resources :containers
  resources :drawers
  resources :sessions
  resources :users
end
