
Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root "admins#index"
  resources :admins
  resources :customers do
    member do
      
    end
  end
  resources :products do 
  	collection do 
  		get 'cat'
  	end
  end
  resources :carts
  resources :categories
  resources :brands
  get '/electric',to:"products#electric" 
  get '/seasonal',to:"products#seasonal" 
  get '/kitchen',to:"products#kitchen" 
  get '/television',to:"products#television"
  get '/js',to:"customers#js"
  
  

  # get 'products/cat',to:"products#cat"
  post 'products/create_ajax_form_friend', to: "products#create_ajax_form_friend"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
