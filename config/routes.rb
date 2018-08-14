


Rails.application.routes.draw do
  #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'tasks', to:'tasks_controller#index', as: "tasks"
  post 'tasks', to: "tasks_controller#create"
  get 'tasks/new', to:'tasks_controller#new', as: "newtask"
  get 'tasks/:id', to: 'tasks_controller#show'
  get 'tasks/:id/edit', to: "tasks_controller#edit", as: "edit_task"
  patch 'tasks/:id', to:"tasks_controller#update", as: "task"
  delete 'tasks/:id', to: "tasks_controller#destroy", as: "delete"
end




ressource: task
