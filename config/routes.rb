Rails.application.routes.draw do

  root "programs#index"

  resources :programs do
    resources :exercises
    resources :exercise_logs, only: [:new, :create]
  end

end
