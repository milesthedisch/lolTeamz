Rails.application.routes.draw do
  resources :teams, :characters

  root :to => 'pages#index'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end
