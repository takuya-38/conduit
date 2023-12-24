Rails.application.routes.draw do
  root "article#home"
  get "article/home"
  get "article/show"
  get "article/create"
  get "/register", to: "users#new"
  get "/setting", to: "users#edit"
  get "/profile", to: "users#show"
  resources :users
end
