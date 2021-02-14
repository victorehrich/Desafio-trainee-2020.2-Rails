Rails.application.routes.draw do
  resources :reservations
  get 'home/index'
  root 'home#index'
  resources :books
  resources :categories
  devise_for :librarians, controllers:{
    registrations: 'librarians/registrations',
    sessions:'librarians/sessions'
  } 
  resources :clients
  resources :authors
  devise_scope :librarian do
    unauthenticated :librarian do
      get '/librarians/sign_up',to: 'sessions#new'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
