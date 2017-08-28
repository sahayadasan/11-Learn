Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/users', to: 'users#index'
  get '/users/edit_role', to: 'users#edit_role'
  put '/users/update_role', to: 'users#update_role'
  resources :klasses, only: [:index, :new, :create]
  resources :registrations, only: [:index, :new, :create] do
    member do
      put '/toggle_open', to: 'registrations#toggle_open'
    end
  end
end
