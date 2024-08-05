Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "friends#index"
  
  get '/about', to: 'friends#about'
  
  resources :friends
end
