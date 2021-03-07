Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy, :show, :update]
  resources :carts, only: [:create, :destroy]
  resources :comments, only: [:index, :create, :destroy, :update]
  resources :merchandises, only: [:index, :create, :destroy, :show, :update]
  resources :past_orders, only: [:index, :create, :destroy, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
