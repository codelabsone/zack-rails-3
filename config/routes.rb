Rails.application.routes.draw do
  root 'cars#index'
  get "car", to: "cars#index"
  get "inventory", to: "cars#inventory"
  get "about", to: "infopages#about"
  get "contact", to: "infopages#contact"
end
