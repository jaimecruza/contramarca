Rails.application.routes.draw do

  get 'users/profile/:id', to: "users#show", as: 'user'
  get 'stories/search', to: 'stories#search'

  resources :stories do
    resources :images, only: [:create, :index]
  end

  resources :images, only: [:destroy]

  devise_for :users
  root to: 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
