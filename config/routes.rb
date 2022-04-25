Rails.application.routes.draw do
  
  root to:'welcome#index'
  
  get "adhesion", to:'membership#adherant'
  get "admin", to:'membership#admin'
  get "dashboard-admin", to:'membership#espaceAdmin'
  get "dashboard-adherant", to:'membership#espaceMember'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
