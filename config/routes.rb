Rails.application.routes.draw do
  devise_for :users
  resources :locations
  #get 'home/index'
   root 'home#index' 
   get 'home/about'

    resources :locations do
      resources :articles, only: [:new, :create, :destroy]
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
end
