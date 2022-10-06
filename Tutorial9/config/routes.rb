Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "tutorial9#index"
  get "/tutorial9", to: "tutorial9#index"
  post "/tutorial9", to: "tutorial9#upload"
end
