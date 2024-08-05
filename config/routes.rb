Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "friends#index"
  
  resources :friends

  # Defines the root path route ("/")
  # root "posts#index"
end
