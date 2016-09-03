Rails.application.routes.draw do
  resources :user, only: [:show]
  resources :contacts, only: [:create]
  resources :blogs, only: [:show]

  root 'user#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
