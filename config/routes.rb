VersionAirlines::Application.routes.draw do
 root :to => 'welcome#index'
 resources :airplanes, :only => [:index]
 resources :flights, :only => [:index, :show]
end
