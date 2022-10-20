Rails.application.routes.draw do
  #get 'user/index'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  get '/logout', to:'sessions#destroy'
 
  root 'sessions#new'
  resources :user do
    collection do
      post :import
    end
  end

  delete '/user/:id', to: 'users#destroy', as: 'delete_user'
  post '/users/new', to: 'users#create', as: 'create_user'
  get '/user', to: 'users#search', as: 'search_user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
