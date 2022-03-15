Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # List
  get 'tasks', to: 'tasks#index'

  # Create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # View details
  get "tasks/:id", to: "tasks#show", as: :task

  # Edit
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"
end
