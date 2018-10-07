Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  post '/v1/api/product_api', to: 'products#product_create'

  get '/dashboard' => 'home#dashboard', as: :dashboard

  resources :home do
  
  end

  resources :products do
  	get 'cart'
  	get 'checkout'
  end

end
