Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :posts, only: [:create]
  end

  resources :posts, only: [:index]

  root to: 'users#index'

end
