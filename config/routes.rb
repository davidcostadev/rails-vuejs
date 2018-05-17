Rails.application.routes.draw do
  resources :users, :tasks

  get '/tasks/:id/toggle_completed', to: 'tasks#toggle_completed', as: :task_toggle

  get '/users/:id/tasks', to: 'users#tasks', as: :user_tasks
end
