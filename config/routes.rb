Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy, :show, :update]
  resources :carts, only: [:create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
