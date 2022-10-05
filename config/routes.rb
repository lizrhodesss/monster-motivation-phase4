Rails.application.routes.draw do
  resources :quotes#, :only [:index, :show, :create]
  resources :tech_resources#, :only [:index, :show, :create, :destroy]
  resources :non_tech_resources#, :only [:index, :show, :create, :destroy]
  resources :survey_forms#, :only [:index, :show, :create]
  # resources :users#, :only [:index, :show, :create, :update, :destroy]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :cohorts#, :only [:index, :show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    # route to test your configuration
    get '/hello', to: 'application#hello_world'

    get '*path',
    to: 'fallback#index',
    constraints: ->(req) { !req.xhr? && req.format.html? }
end
