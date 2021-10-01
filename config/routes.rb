Rails.application.routes.draw do
  root "articles#index"
  devise_for :users
  resources :categories
  resources :articles do
    resource :vote, only: %w[create destroy]  
  end
end
