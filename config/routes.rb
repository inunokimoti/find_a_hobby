Rails.application.routes.draw do
  devise_for :users
  get 'hobbies/index'
  root to: "hobbies#index"

  resources :users
end
