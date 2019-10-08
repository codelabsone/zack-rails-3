Rails.application.routes.draw do

  resource :session
  get "signout", to: "sessions#destroy"
  get "manage/signin", to: "sessions#new"

  resources :users
  get "users/:id/promote", to: "users#make_admin", as: "promote"
  get "users/:id/demote", to: "users#demote_admin", as: "demote"

  root 'vehicles#index'
  resources :vehicles do
    member do
      delete :delete_image_attachment
    end
  end

  get "about", to: "info_pages#about"
  get "contact", to: "info_pages#contact"

end
