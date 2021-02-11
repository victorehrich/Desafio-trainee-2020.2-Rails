Rails.application.routes.draw do
  resources :reservations
  get 'home/index'
  root 'home#index'
  resources :books
  resources :categories
  devise_for :librarians, controllers:{
    registrations: 'librarians/registrations'
  } 
  resources :clients
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
