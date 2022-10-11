Rails.application.routes.draw do
  resources :quotes
  resources :tech_resources
  resources :non_tech_resources
  resources :survey_forms
  resources :cohorts
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  

end
