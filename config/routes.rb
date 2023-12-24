Rails.application.routes.draw do
  get 'article/home'
  get 'article/show'
  get 'article/create'
  get 'users/new'
  root 'application#hello'
end
