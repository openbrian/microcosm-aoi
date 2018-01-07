Rails.application.routes.draw do
  root :to => 'microcosms#index'
  get 'microcosms/:key', to: 'microcosms#show_by_key', constraints: { key: /[a-zA-Z]{1,32}/ }
  resources :microcosms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
