Rails.application.routes.draw do
  root to: 'home#index'

  # resources :tasks, only: [:index, :show]
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # resources :cart_tasks, only: [:create, :destroy]
  post '/cart_tasks', to: 'cart_tasks#create'
  delete '/cart_tasks/:id', to: 'cart_tasks#destroy', as: 'cart_task'

  # resources :volunteers, only: [:create, :new, :edit]
  post '/volunteers', to: 'volunteers#create'
  get '/volunteers/new', to: 'volunteers#new', as: 'new_volunteer'
  get '/volunteers/:id/edit', to: 'volunteers#edit', as: 'edit_volunteer'

  get '/dashboard', to: 'volunteers#show'
  get "/cart", to: 'cart_tasks#show'

  get '/commitments', to: 'commitments#show', as: :commitments
  post '/commitments', to: 'commitments#create'

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/:name", to: 'cities#show', as: :city

  namespace :admin do
    get '/dashboard', to: 'volunteers#show'
    patch '/dashboard', to: 'volunteers#update'
    get '/edit', to: 'volunteers#edit'
    resources :tasks, only: [:new, :create, :edit, :update]
  end

end
