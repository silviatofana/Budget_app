Rails.application.routes.draw do
  get 'entities/index'
  get 'entities/show'
  get 'entities/new'
  get 'entities/create'
  get 'entities/update'
  get 'entities/destroy'
  get 'entities/edit'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'users#index'
  resources :groups, only: [:index, :show, :create, :new, :destroy]
  resources :entities, only: [:index, :show, :create, :new, :destroy]
end
