Rails.application.routes.draw do
  resources :users
  root 'vehicles#index'
  resources :vehicles do
    member do
      delete :delete_image_attachment
    end
  end
  get "about", to: "info_pages#about"
  get "contact", to: "info_pages#contact"
end
