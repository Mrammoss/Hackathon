Rails.application.routes.draw do
  resources :potholes, only: %i[index show new create]
  root "potholes#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
