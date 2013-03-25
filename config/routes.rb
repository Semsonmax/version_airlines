VersionAirlines::Application.routes.draw do
 root :to => 'welcome#index'

 resources :zeppelins, :only => [:index, :show, :new, :create]
 resources :voyages, :only => [:index, :show, :new, :create]
 resources :travelers, :only => [:new, :create, :index, :show]
 resources :bookings, :only => [:create]

 get '/login' =>'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'

end
