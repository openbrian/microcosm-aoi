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
  resources :microcosms
  post '/microcosm_changesets/discover', to: 'microcosm_changesets#discover'
  resources :microcosm_changesets
  resources :members
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
