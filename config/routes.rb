Rails.application.routes.draw do
  resources :tasks
  # delete 'tasks', to: 'tasks#destroy_all', as: :destroys

  # get    'tasks', to: 'tasks#index'

  # get    'tasks/new',      to: 'tasks#new'
  # post   'tasks',          to: 'tasks#create'

  # # NB: The `show` route needs to be *after* `new` route.
  # get    'tasks/:id',      to: 'tasks#show'

  # get    'tasks/:id/edit', to: 'tasks#edit'
  # patch  'tasks/:id',      to: 'tasks#update'

  # delete 'tasks/:id',      to: 'tasks#destroy'
end
