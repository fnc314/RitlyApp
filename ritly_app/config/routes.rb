RitlyApp::Application.routes.draw do

  resources :users, :sessions

  #Go Controller
  root to: "go#index"

  get "/go", to: "go#index"

  get "/go/:random_string", to: "go#redirect"

  get "/go/:random_string/preview", to: "go#preview"

  #Links Controller
  get "/links", to: "links#index"

  get "/links/new", to: "links#new"

  get "/links/:id", to: "links#show"

  post "/links", to: "links#create"

  delete "/links/:id", to: "links#delete"

  #Sessions Controller
  get '/signup', to: 'users#new'
  
  delete '/signout', to: 'sessions#destroy'
  
  get'/signin', to: 'sessions#new'

end
