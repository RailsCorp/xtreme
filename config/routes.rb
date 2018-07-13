Rails.application.routes.draw do

  devise_for :users
  resources :task
  resources :users do
    resources :groups
    resources :members
  end
  # mount API::Root => '/api'
end
