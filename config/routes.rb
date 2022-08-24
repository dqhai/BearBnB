Rails.application.routes.draw do
  resources :pets do
    resources :bookings, only: %i[new create]
  end


  devise_for :users

  root to: "pets#index"
  # get 'pets', to: 'pets#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
