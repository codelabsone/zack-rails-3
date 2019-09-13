Rails.application.routes.draw do
  root 'vehicles#index'
  get "car", to: "vehicles#index"
  get "inventory", to: "vehicles#inventory"
  get "about", to: "info_pages#about"
  get "contact", to: "info_pages#contact"
end
