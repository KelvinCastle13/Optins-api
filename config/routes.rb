Rails.application.routes.draw do
  post "/signup" => "user#create"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "up" => "rails/health#show", as: :rails_health_check
end
