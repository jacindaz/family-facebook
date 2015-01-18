Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :posts
  end

  root to: 'users#index'

end
