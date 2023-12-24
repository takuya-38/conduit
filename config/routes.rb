Rails.application.routes.draw do
  root "article#home"
  get "article/home"
  get "article/show"
  get "article/create"
  get "/signup", to: "users#new"
end
