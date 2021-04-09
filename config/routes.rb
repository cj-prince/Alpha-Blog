Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  resources :users
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
