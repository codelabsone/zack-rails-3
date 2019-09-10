Rails.application.routes.draw do
  root 'cars#index'
  get "car", to: "cars#index"
  get "inventory", to: "cars#inventory"
  get "about", to: "info_pages#about"
  get "contact", to: "info_pages#contact"
end
