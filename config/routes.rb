Rails.application.routes.draw do
  get '/admin', to: "admin#index"
  get '/login', to: "access#new"
  post '/login', to: "access#create"
  delete '/exit', to: 'access#destroy'
  get 'access/new'
  get 'access/create'
  get 'access/destroy'
  get 'admin/index'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  root "shopper#index", as: "shopper"
  get '/exit', to: 'sessions#destroy', as: :logout
  get 'shopper/index'
  resources :products
  resources :shopper do
	collection do
		get 'show_product' => 'shopper#show_product', as: :show_product
	end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
