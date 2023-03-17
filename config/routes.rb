Rails.application.routes.draw do
  resources :todos
  get 'login', to: 'home#index'
  get 'logout', to: 'auth#logout'
  get 'auth/:provider/callback', to: 'auth#callback'
  root to: 'home#index'
end
