Rails.application.routes.draw do
  root 'cars#index'
  get "car", to: "cars#index"
  get "inventory", to: "cars#inventory"
  get "about", to: "cars#about"
end
