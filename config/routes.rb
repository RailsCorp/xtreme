Rails.application.routes.draw do
  devise_for :users
  get "home/index" => "home#index"
  resources :tasks, only: %i[index]
  resources :groups, only: %i[show]

  namespace :api do
    resources :users do
      resources :groups
      resources :coporations
    end

    resources :groups, only: %i[show] do
      resources :group_tasks, %i[index create update destroy]
    end

    resources :tasks, only: %i[create update destroy] do
      resources :comments, only: %i[create destory]
      resources :memos, only: %i[create destory]
    end
  end
  # mount API::Root => '/api'
end
