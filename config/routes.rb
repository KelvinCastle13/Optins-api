Rails.application.routes.draw do
  get "/strategies" => "strategies#index"
  get "/strategies/:id" => "strategies#show"
  post "/strategies" => "strategies#create"
  patch "/strategies/:id" => "strategies#update"
  delete "/strategies/:id" => "strategies#destroy"

  get "/legs" => "legs#index"
  get "/legs/:id" => "legs#show"
  post "/legs" => "legs#create"
  patch "/legs/:id" => "legs#update"
  delete "/legs/:id" => "legs#destroy"

  get "/trades" => "trades#index"
  get "/trades/:id" => "trades#show"
  post "/trades" => "trades#create"
  patch "/trades/:id" => "trades#update"
  delete "/trades/:id" => "trades#destroy"

  get "/stocks" => "stocks#index"
  get "/stocks/:id" => "stocks#show"
  post "/stocks" => "stocks#create"
  patch "/stocks/:id" => "stocks#update"
  delete "/stocks/:id" => "stocks#destroy"

  post "/signup" => "users#create"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "/stocks" => "stocks#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
