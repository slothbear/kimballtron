Kimballtron::Application.routes.draw do
  devise_for :farmers
  resources :masteries, :only => :index
  resources :crops
  #TODO: do I need both the get/welcome and root/welcome lines?
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
