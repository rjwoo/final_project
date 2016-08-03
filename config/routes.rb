Rails.application.routes.draw do

  root "programs#index"

  resources :programs do
    resources :exercise_logs
  end

end
