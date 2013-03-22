VersionAirlines::Application.routes.draw do
 root :to => 'welcome#index'

 resources :zeppelins, :only => [:index]
 resources :voyages, :only => [:index, :show]
 get '/login' =>'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'

end
