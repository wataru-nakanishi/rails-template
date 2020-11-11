Rails.application.routes.draw do
  get 'login/login'
  resources :memos
  resources :users
  post 'login/login'
end
