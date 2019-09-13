Rails.application.routes.draw do
  root 'vehicles#index'
  resources :vehicles
  get "about", to: "info_pages#about"
  get "contact", to: "info_pages#contact"
end
