Rails.application.routes.draw do
  resources :votes
  resources :categories
  devise_for :users
    root "articles#index"
    get "/articles", to: "articles#index"
  end
