Rails.application.routes.draw do
  devise_for :users
  root to: "hobbies#index"
  resources :users
  resources :hobbies
end
