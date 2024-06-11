Rails.application.routes.draw do
  devise_for :users
  root to: "hobbies#index"
  resources :users, only: :show
  resources :hobbies do
    resources :comments, only: :create
  end
end
