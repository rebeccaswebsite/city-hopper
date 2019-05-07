Rails.application.routes.draw do
  resources :city_trips
  resources :cities, only: [:index, :show]
  resources :countries, only: [:index, :show]
  resources :trips
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :welcomes, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
