Rails.application.routes.draw do
  resources :users, :tasks

  get '/users/:id/tasks', to: 'users#tasks', as: :user_tasks
end
