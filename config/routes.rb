Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :users
  get "/profile", to: "users#show", as: "profile"
  get "/accept/:id", to: "bookings#accept", as: "accept"
  get "/refuse/:id", to: "bookings#refuse", as: "refuse"
  get "/delete/:id", to: "bookings#destroy", as: "destroy"


  
  resources :sosies do
    resources :bookings, only: %i[new create show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 
