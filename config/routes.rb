Rails.application.routes.draw do
  get "about", to: "about#index", as: "about"
  root to: "main#index"
  get "sign_up", to: "registerations#new"
  post "sign_up", to: "registerations#create"
end
