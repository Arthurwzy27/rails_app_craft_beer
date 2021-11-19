Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :factories do
     resources :bookings, only: [:show, :create, :update]
  end
  resource :dashboard, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
