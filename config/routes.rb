Rails.application.routes.draw do
  get 'cards/show'
  root 'pages#home'

  resources :menus
  resources :categories
  resources :pages, only: [:home, :show]
  resources :order_items, only: [:create, :update, :destroy]
  scope :order_items do
    get '/order_items/:id' => 'order_items#destroy', as: :destroy_order_item
    get '/checkout' => 'order_items#checkout', as: :checkout
  end


  resources :card, only: [:show]

  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
