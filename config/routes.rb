Kimballtron::Application.routes.draw do
  get "farmers/show"

  devise_for :farmers
  resources :farmers, :only => :show
  resources :crops
  get "welcome/index"
  root :to => "Welcome#index"
end
