Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/users', to: 'users#index'
  get '/users/edit_role', to: 'users#edit_role'
  put '/users/update_role', to: 'users#update_role'
end
