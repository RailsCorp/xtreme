Rails.application.routes.draw do
  get 'coporations/show'

  devise_for :users
  get 'home/index' => 'home#index'
  resources :users do
    resources :groups, only: %i[:index]
    resources :members, only: %i[:index]
    resources :coporations, only: %i[:show]
    resources :tasks
  end

  namespace :api do
    resources :users do
      resources :groups do
        resources :comments, only: %i[:create, :destory]
        resources :memos, only: %i[:create, :destory]
        resources :coporations, only: %i[:create, :destory, :update]
      end
    end
  end
  # mount API::Root => '/api'
end
