Rails.application.routes.draw do
  root 'cars#index'
  get "car" => "cars#index"
end
