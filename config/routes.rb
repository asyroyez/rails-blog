Rails.application.routes.draw do
  resources :services, only: [:index, :show]
  resources :blog_posts, only: [:index, :show]
  get 'portfolio', to: 'static#portfolio'
  root 'hello#index'
end