# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: redirect('/employees')

  get 'employees', to: 'employees#index', as: 'employees'
  get 'employees/new', to: 'employees#new', as: 'new_employee'
  get 'employees/:id', to: 'employees#show', as: 'employee'
  post 'employees', to: 'employees#create'
  get 'employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
  patch 'employees/:id', to: 'employees#update'
  put 'employees/:id', to: 'employees#update'
  delete 'employees/:id', to: 'employees#destroy'

  get 'projects', to: 'projects#index', as: 'projects'
  get 'projects/new', to: 'projects#new', as: 'new_project'
  get 'projects/:id', to: 'projects#show', as: 'project'
  post 'projects', to: 'projects#create'
  get 'projects/:id/edit', to: 'projects#edit', as: 'edit_project'
  patch 'projects/:id', to: 'projects#update'
  put 'projects/:id', to: 'projects#update'
  delete 'projects/:id', to: 'projects#destroy'
end
