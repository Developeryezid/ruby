Rails.application.routes.draw do
  get 'home/dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :cars
  root 'home#dashboard'
end
