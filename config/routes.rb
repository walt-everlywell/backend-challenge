Rails.application.routes.draw do
  # TODO remove un-needed routes
  resources :friendships
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
