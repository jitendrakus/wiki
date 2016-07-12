Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :articles
  resources :categories
  root 'articles#index'
end
