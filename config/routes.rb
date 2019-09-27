Rails.application.routes.draw do
  resources :activities
  resources :locations
  resources :matches
  resources :rendezvous
  resources :pets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
