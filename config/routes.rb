Rails.application.routes.draw do
  post "/signup" => "user#create"

  get "up" => "rails/health#show", as: :rails_health_check
end
