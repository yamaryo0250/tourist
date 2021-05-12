Rails.application.routes.draw do
  devise_for :users
  get 'rides/index'
  root to: "rides#index"
  resources :rides, only: [:index, :new, :create, :show, :edit, :update]
end
