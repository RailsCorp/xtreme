Rails.application.routes.draw do
  devise_for :users
  get 'home/index' => 'home#index'
  resources :tasks, only: :index
  resources :users do
  end

  namespace :api do
    resources :users do
      resources :groups
      resources :coporations
    end

    resources :tasks, only: [:create, :update, :destroy] do
      resources :comments, only: [:create, :destory]
      resources :memos, only: [:create, :destory]
    end
  end
  # mount API::Root => '/api'
end
