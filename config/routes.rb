Rails.application.routes.draw do
  resources :properties
  devise_for :accounts
  get '/dashboard' => 'dashboard#index', as: :dashboard
  get '/profile/:id' => 'dashboard#profile', as: :profile
  # get 'dashboard/properties'
  # get 'dashboard/reports'  
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
