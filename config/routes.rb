Rails.application.routes.draw do
  get 'users/' , to: 'users#index' , as:'users'
  get 'user/:id' , to: 'users#show', as:'user'
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
