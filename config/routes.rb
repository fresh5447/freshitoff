Freshitoff::Application.routes.draw do
 
  devise_for :users
  root :to => "home#index"
  resources :todos

end