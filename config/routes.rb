# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: redirect('/quizzes')

  get 'quizzes', to: 'quizzes#index', as: 'quizzes'
  post 'quizzes', to: 'quizzes#create'
  get 'quizzes/new', to: 'quizzes#new', as: 'new_quiz'
  get 'quizzes/:id', to: 'quizzes#show', as: 'quiz'
  get 'quizzes/:id/edit', to: 'quizzes#edit', as: 'edit_quiz'
  patch 'quizzes/:id', to: 'quizzes#update'
  delete 'quizzes/:id', to: 'quizzes#destroy'

  get 'quizzes/:quiz_id/questions', to: 'questions#index', as: 'quiz_questions'
  post 'quizzes/:quiz_id/questions', to: 'questions#create'
  get 'quizzes/:quiz_id/questions/new', to: 'questions#new', as: 'new_quiz_question'
  get 'quizzes/:quiz_id/questions/:id', to: 'questions#show', as: 'quiz_question'
  get '/quizzes/:quiz_id/questions/:id/edit', to: 'questions#edit', as: 'edit_quiz_question'
  patch '/quizzes/:quiz_id/questions/:id', to: 'questions#update'
  delete '/quizzes/:quiz_id/questions/:id', to: 'questions#destroy'
end
