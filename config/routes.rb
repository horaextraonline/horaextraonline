Horaextraonline::Application.routes.draw do
  
  match 'quemsomos' => "page#quem_somos"

  get "home/index"

  resources :events, :only => [:new, :create]
  resources :users
  root :to => "home#index"
  # match ':controller(/:action(/:id(.:format)))'
end
