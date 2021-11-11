Rails.application.routes.draw do
  resources :roles
  resources :assignments
  resources :opportunities
  resources :request_statuses
  resources :user_permissions_lovs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
