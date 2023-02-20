Rails.application.routes.draw do
  resources :transract_groups
  resources :groups
  resources :transracts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
end
