Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :users
  get "/profile", to: "users#show", as: "profile"
  get '/search' => 'pages#search', :as => 'search_page'
  resources :sosies do
    resources :bookings, only: %i[new create show]
  end
  resources :bookings, only: [:destroy] do
    patch :accept, on: :member
    patch :refuse, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
