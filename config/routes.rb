Rails.application.routes.draw do
  root "articles#home"
  get "/editor", to: "articles#new"
  get "/show", to: "articles#show"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  resources :articles
end
