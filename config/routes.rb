Rails.application.routes.draw do
  resources :products
  devise_for :users
  resources :home
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'products#index'
  root 'home#index'
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
