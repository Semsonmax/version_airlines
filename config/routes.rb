VersionAirlines::Application.routes.draw do
 root :to => 'welcome#index'
 resources :zeppelins, :only => [:index]
 resources :voyages, :only => [:index, :show]

end
