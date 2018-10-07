Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  post '/v1/api/seller_api', to: 'sellers#seller_create'

  get '/dashboard' => 'home#dashboard', as: :dashboard

  resources :home do
  
  end

  resources :products do
  	get 'cart'
  	get 'checkout'
  end

end
