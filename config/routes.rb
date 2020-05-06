Rails.application.routes.draw do

  get 'question_bank/index'
  get 'home/index'
  get 'home/tempi'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'home#index'
 resources :users
 resources :sessions, only: [:new, :create, :destroy]
 get 'signup', to: 'users#new', as: 'signup'
 get 'login', to: 'sessions#new', as: 'login'
 get 'logout', to: 'sessions#destroy', as: 'logout'

end
