Horaextraonline::Application.routes.draw do
  get "home/index"

  resources :events, :only => [:new, :create]
  root :to => "home#index"
  # match ':controller(/:action(/:id(.:format)))'
end
