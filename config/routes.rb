Rails.application.routes.draw do
  
  root to:'welcome#index'
  
  get "adhesion", to:'membership#adherant'
  get "admin", to:'membership#admin'
  get "dashboard", to:'membership#espaceAdmin'
  get "dashboard-adherant", to:'membership#espaceMember'

  devise_for  :users,
    :path => '',
    :path_names =>
      { :sign_in => 'connexion',
        :sign_out => 'logout',
        :sign_up =>   '', :registration => 'inscription',
        :edit => 'edit'
      }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
