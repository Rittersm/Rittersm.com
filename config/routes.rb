Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :user, only: [:show]
  resources :contacts, only: [:create]
  resources :blogs, only: [:show, :index]

  post 'login' => 'user_session#create', as: :login

  root 'user#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
