Rails.application.routes.draw do
  get '/login', :to => 'sessions#new', :as => :login
  root :to => "pages#home"
  get '/logout', :to => 'sessions#destroy'
  resources :libraries

  match '/auth/failure', :to => 'sessions#failure', :via =>[:get,:post]
  get '/auth/spotify/callback', :to => 'sessions#create'
  # , :via =>[:get,:post]
  # match '/auth/:provider/callback', :to => 'sessions#create', :via =>[:get,:post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
