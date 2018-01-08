Rails.application.routes.draw do
  root :to => 'microcosms#index'
  # This is needed because "new" matches the regex for microcosm names.
  get 'microcosms/new', to: 'microcosms#new'
  get 'microcosms/:key', to: 'microcosms#show_by_key', constraints: { key: /[a-zA-Z]{1,32}/ }
  resources :microcosms
  resources :members
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
