Rails.application.routes.draw do
  get 'hobbies/index'
  root to: "hobbies#index"
end
