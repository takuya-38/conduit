Rails.application.routes.draw do
  get 'sessions/new'
  root "article#home"
  get "article/home"
  get "article/show"
  get "article/create"
  get "/register", to: "users#new"
  get "/setting", to: "users#edit"
  get "/profile", to: "users#show"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
end
