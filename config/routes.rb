Rails.application.routes.draw do

  get 'secret_pages', to: 'secret_pages#show', as: "secret"

  root "users#index"

#  get "/users/:id", to: "users#show"


  get  '/signup',  to: 'users#new', as: "signup"
  post '/signup',  to: 'users#create'
  patch 'users/:id', to: 'users#update'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

#  get 'users/index'
#  get 'users/show'
#  get 'users/new'
#  get 'users/create'
#  get 'users/edit'
#  get 'users/update'
#  get 'users/destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
