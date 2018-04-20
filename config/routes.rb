Rails.application.routes.draw do
  root :to => 'microcosms#index'

  get '/sessions/new' => 'sessions#new'
  match '/auth/:provider/callback' => "sessions#create", via: [:get, :post]
  match '/auth/failure', to: redirect('/'), via: [:get, :post]
  match '/signout' => 'sessions#destroy', :as => :signout, via: [:get, :post]
  resources :events
  resources :organizers
  # This is needed because "new" matches the regex for microcosm names.
  get 'microcosms/new', to: 'microcosms#new'
  get 'microcosms/:key', to: 'microcosms#show_by_key', constraints: { key: /[a-zA-Z]{1,32}/ }
  # TODO: use key by setting constraints:.
  get 'microcosms/:id/changesets', to: 'microcosms#show_changesets', :as => :changesets_of_microcosm
  get 'microcosms/:id/organizers', to: 'microcosms#show_organizers', :as => :organizers_of_microcosm
  post '/microcosms/discover_changesets', to: 'microcosms#discover_changesets'
  resources :microcosms
  resources :microcosm_changesets
  resources :members
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
