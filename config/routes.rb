Rails.application.routes.draw do
  resources :characters
  resources :teams do 
    member do
      get 'join'
      get 'leave'
    end
  end

  root :to => 'pages#index'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end
