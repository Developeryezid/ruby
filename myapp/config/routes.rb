Rails.application.routes.draw do
  devise_for :customerscustomers/sign_upcustcustcustomers/sign_upomers/sign_upomers/sign_up
  root to: "home#dashboard"
  get 'home/dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :cars
end
