Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    "tasks",          to: "tasks#index",  as: :tasks
  # post   "restaurants",          to: "restaurants#create"
  # get    "restaurants/new",      to: "restaurants#new",    as: :new_restaurant
  # get    "restaurants/:id/edit", to: "restaurants#edit",   as: :edit_restaurant
  # get    "restaurants/:id",      to: "restaurants#show",   as: :restaurant
  # patch  "restaurants/:id",      to: "restaurants#update"
  # delete "restaurants/:id",      to: "restaurants#destroy"
end
