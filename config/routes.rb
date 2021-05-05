Rails.application.routes.draw do
  get 'rides/index'
  root to: "rides#index"
end
