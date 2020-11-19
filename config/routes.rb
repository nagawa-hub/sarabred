Rails.application.routes.draw do
  
  devise_for :users
  root to: 'companies#index'
  resources :users, only: [:show]
  resources :companies, only: [:index,:new,:create,:show,:destroy] do
    resources :activities, only: [:new,:create,:destroy]
    collection do
      get 'search'
    end
  end
end
