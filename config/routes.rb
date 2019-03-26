Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # C
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # R
  get 'tasks', to: 'tasks#index'
  # R just 1
  get 'tasks/:id', to: 'tasks#show', as: :task

  # U
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # D
  delete 'tasks/:id', to: 'tasks#destroy'

  root to: 'tasks#index'
end
