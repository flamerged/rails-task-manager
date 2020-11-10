Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new"
  post "tasks/update", to: "tasks#update"
  get "tasks/:id", to: "tasks#show", as: "task_show"
  post "tasks/create", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  delete "tasks/:id", to: "tasks#destroy", as: "task_destroy"
end
