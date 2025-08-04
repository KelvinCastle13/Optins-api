Rails.application.routes.draw do
  get "/strategies" => "strategies#index"
  get "/strategies/:id" => "strategies#show"
  post "/strategies" => "strategies#create"
  patch "/strategies/:id" => "strategies#update"
  delete "/strategies/:id" => "strategies#destroy"

  post "/signup" => "users#create"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "up" => "rails/health#show", as: :rails_health_check
end
