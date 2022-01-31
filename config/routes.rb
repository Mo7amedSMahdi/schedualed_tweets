Rails.application.routes.draw do
  get "about", to: "about#index", as: "about"
  root to: "main#index"
  get "sign_up", to: "registerations#new"
  post "sign_up", to: "registerations#create"

  delete "logout", to: "sessions#destroy"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password", to: "passwords#edit"
  patch "password", to: "passwords#update"

end
