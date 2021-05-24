Rails.application.routes.draw do
  devise_for :users
  get 'rides/index'
  root to: "rides#index"
  resources :rides do
    resources :tourings, only: [:index, :create]
  end
  resources :users, only: :show
end
