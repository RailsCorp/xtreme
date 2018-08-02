Rails.application.routes.draw do
  devise_for :users
  get "home/index" => "home#index"
  resources :tasks, only: %i[index]
  resources :groups, only: %i[show]

  namespace :api do
    # resources :users
    resources :groups, only: %i[show] do
      resources :group_tasks, only: %i[index create update destroy]
    end
    resources :tasks, only: %i[create update destroy] do
      resources :comments, only: %i[create destory]
      resources :memos, only: %i[create destory]
    end
  end
end
