Rails.application.routes.draw do

  root "sessions#new"

  resources :programs do
    resources :exercises
  end

  resources :exercises, only: [] do
    resources :exercise_logs, only: [:new, :create, :show]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end
end
