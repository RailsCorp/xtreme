Rails.application.routes.draw do
  devise_for :users
  get 'home/index' => 'home#index'
  resources :users do
    resources :tasks
    resources :groups
    resources :members
  end

  namespace :api do
    resources :users do
      resources :groups do
        resources :comments, only: [:create]
        resources :memos, only: [:create]
      end
    end
  end
  # mount API::Root => '/api'
end
