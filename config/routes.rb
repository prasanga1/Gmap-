Rails.application.routes.draw do
  resources :locations
  resources :users
  root 'users#index'
  root 'locations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
