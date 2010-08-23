Kimballtron::Application.routes.draw do
  devise_for :farmers
  resources :crops
  get "welcome/index"
  root :to => "Welcome#index"
end
