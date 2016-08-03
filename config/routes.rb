Rails.application.routes.draw do

  root "programs#index"

  resources :programs

end
