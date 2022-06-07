Rails.application.routes.draw do
  root to: 'reports#index'
  resources :reports, only: :index
  resources :variablecosts, only: [:new, :create]
  resources :fixedcosts, only: [:new, :create]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
