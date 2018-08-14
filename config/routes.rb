Rails.application.routes.draw do
  devise_for :users
  root "groups#show"
  get "home/index" => "home#index"
  resources :groups, only: %i[create update destroy show] do
    resources :tasks, only: %i[index create update destroy show]
    resources :members, only: %i[index create update destroy]
  end
  resources :tasks, only: %i[index create update destroy show] do
    resources :comments, only: %i[index create]
    resources :memos, only: %i[index create]
  end
end
