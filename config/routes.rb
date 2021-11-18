Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/dashboard', to: 'users#index'
  resources :items, only: [:show, :new, :create] do
    resources :offerings, only: [:create]
  end

  resources :offerings, only: [:edit, :update]

  devise_for :users
end
