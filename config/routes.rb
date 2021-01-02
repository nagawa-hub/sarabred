Rails.application.routes.draw do
  devise_for :users
  post '/users/guest_sign_in', to: 'users#guest'
  root to: 'companies#index'
  resources :users, only: [:show]
  resources :companies, only: [:index,:new,:create,:show] do
    resources :orders, only: [:new,:create,:show]
  end
end
