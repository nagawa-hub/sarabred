Rails.application.routes.draw do
  
  devise_for :users
  root to: 'companies#index'
  resources :companies, only: [:index,:new,:create,:show]
end
