Rails.application.routes.draw do
  get 'coporations/show'

  devise_for :users
  get 'home/index' => 'home#index'
  resources :users do
    resources :groups, only: [:index]
    resources :members, only: [:index]
    resources :coporations, only: [:show]
    resources :tasks
  end

  namespace :api do
    resources :users do
      resources :groups do
        resources :comments, only: [:create, :destory]
        resources :memos, only: [:create, :destory]
        resources :coporations, only: [:create, :destory, :update]
      end
    end
  end
  # mount API::Root => '/api'
end
