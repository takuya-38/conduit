Rails.application.routes.draw do
  root "article#home"
  get "/editor", to: "article#new"
  get "article/show"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
end
