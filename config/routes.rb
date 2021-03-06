Rails.application.routes.draw do
  get 'products/index'
  get 'products/_product'
  get 'payment/show'
  get 'contactus/show'
  get 'orders/show'
  get 'orders/item'
  get 'orders/show'
  get 'carts/show'
  get 'users/new'
  root 'products#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/register' => 'users#new'
  post '/users' => 'users#create'
  get '/carts' => 'carts#show'
  get '/payment' => 'payment#show'
  get '/contact' => 'contactus#show'
  post '/contactus' => 'contactus#create'
  get '/confirm' => 'orders#confirm'
  get '/buynow' => 'carts#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
