Rails.application.routes.draw do
  namespace :api do
    resources :users, :tasks

    # get '/tasks/:id/toggle', to: 'tasks#toggle', as: :task_toggle

    get '/users/:id/tasks', to: 'users#tasks', as: :user_tasks
  end
end
