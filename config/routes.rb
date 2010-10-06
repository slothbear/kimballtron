Kimballtron::Application.routes.draw do
  devise_for :farmers
  resources :masteries, :only => :index
  root :to => "Welcome#index"

#TODO: This creates *member* edit and update methods as well.  why?
#rake routes:
#edit_mastery GET    /masteries/:id/edit(.:format)    {:action=>"edit", :controller=>"masteries"}
#     mastery PUT    /masteries/:id(.:format)         {:action=>"update", :controller=>"masteries"}

  resources :masteries, :only => [:edit, :update] do
    collection do
      get 'edit'
      put 'update', :as => 'update'
    end
  end

end
