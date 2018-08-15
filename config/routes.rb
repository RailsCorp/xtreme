Rails.application.routes.draw do
  devise_for :users
  root "groups#show"
  get "home/index" => "home#index"
  resources :users, only: %i[show update destroy]
  resources :groups, only: %i[index create update destroy show] do
    resources :tasks, only: %i[index create update destroy show]
    resources :members, only: %i[index create update destroy]
  end
  resources :tasks, only: %i[index create update destroy show] do
    resources :comments, only: %i[index create]
    resources :memos, only: %i[index create]
  end
  # 管理画面用
  namespace :admin do
    devise_for :admin_users
    resources :admin_users, only: %i[show update destroy]
  end
end
