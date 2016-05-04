Rails.application.routes.draw do
  root to: 'home#index'

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task

  post '/cart_tasks', to: 'cart_tasks#create'
  delete '/cart_tasks/:id', to: 'cart_tasks#destroy', as: :cart_task

  post '/volunteers', to: 'volunteers#create'
  get '/volunteers/new', to: 'volunteers#new', as: :new_volunteer
  get '/volunteers/:id/edit', to: 'volunteers#edit', as: :edit_volunteer

  get '/dashboard', to: 'volunteers#show'
  get '/cart', to: 'cart_tasks#show'

  get '/commitments', to: 'commitments#show', as: :commitments
  post '/commitments', to: 'commitments#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'

  get '/:name', to: 'cities#show', as: :city

  get '/admin/dashboard', to: 'admin/volunteers#show', as: :admin_dashboard
  patch '/admin/dashboard', to: 'admin/volunteers#update'

  get '/admin/edit', to: 'admin/volunteers#edit', as: :admin_edit

  get '/admin/tasks/new', to: 'admin/tasks#new', as: :new_admin_task
  get '/admin/tasks/:id/edit', to: 'admin/tasks#edit', as: :edit_admin_task
  post '/admin/tasks', to: 'admin/tasks#create', as: :admin_tasks
  patch 'admin/tasks/:id', to: 'admin/tasks#update', as: :admin_task
end
