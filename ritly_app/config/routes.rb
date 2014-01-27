RitlyApp::Application.routes.draw do
  
  #Go Controller
  root to: "go#index"

  get "/go", to: "go#index"

  get "/go/:random_string", to: "go#redirect"

  get "/go/:random_string/preview", to: "go#preview"

  #Links Controller
  get "/links", to: "links#index"

  get "/links/new", to: "links#new"

  get "/links/:random_string", to: "links#show"

  get "/links/sorry", to: "links#sorry"

  post "/links", to: "links#create"

  delete "/links/:random_string", to: "links#delete"

end
