Rails.application.routes.draw do
  resources :users
  get 'signup', to: 'users#new'
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
