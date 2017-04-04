Rails.application.routes.draw do
  namespace :api do
    resources :potatos
  end
  get "potatos", to: "api/potatos#index"
  get "potatos/:id", to: "api/potatos#show"
end
