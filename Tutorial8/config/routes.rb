Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "logout", to:"logout#index"
  post "logout", to:"logout#index"
  get "login", to:"login#index"
  post "login", to:"login#index"
end
