Rails.application.routes.draw do

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'users#index'
  resources :groups, only: [:index, :show, :create, :new, :destroy] do
   resources :entities, only: [:index, :show, :create, :new, :destroy]
  end
end
