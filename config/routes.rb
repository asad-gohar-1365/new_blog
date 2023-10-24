Rails.application.routes.draw do
  # get 'users/' , to: 'users#index' , as:'users'
  # get 'user/:id' , to: 'users#show', as:'user'
  resources :users
  resources :cars

  resources :authors do
    resources :posts , only: [:index, :new, :create]
  end
end
