Kimballtron::Application.routes.draw do
  get "farmers/show"

  devise_for :farmers
  resources :farmers, :only => :show
  resources :crops
  get "welcome/index"
  root :to => "Welcome#index"

#FIXME: learn how to add two routes properly.  This one adds a bunch.
  resources :masteries, :only => [:edit, :update] do
    collection do
      get 'edit'
      put 'update', :as => 'update'
    end
  end

end
