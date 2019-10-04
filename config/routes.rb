Rails.application.routes.draw do

  resource :session
  get "signout", to: "sessions#destroy"

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
