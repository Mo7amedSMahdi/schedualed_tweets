Rails.application.routes.draw do
  get "about", to: "about#index", as: "about"
  root to: "main#index"
end
