Rails.application.routes.draw do
  resources :city_trips
  resources :cities, only: [:index, :show]
  resources :countries, only: [:index, :show]
  resources :trips, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :welcomes, only: :index
  resources :sessions, only: :create
  get "/login_form", to: "sessions#login_form"
  post "/login", to: "sessions#login", as: "login"
  delete "/logout", to: "sessions#logout"
  get "/search", to: "cities#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
