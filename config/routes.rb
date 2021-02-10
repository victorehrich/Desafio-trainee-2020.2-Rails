Rails.application.routes.draw do
  resources :books
  resources :categories
  devise_for :librarians
  resources :clients
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
