VersionAirlines::Application.routes.draw do
 root :to => 'welcome#index'
 resources :zeppelns, :only => [:index]
 resources :voyages, :only => [:index, :show]
end
