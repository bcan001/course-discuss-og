Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'schools#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'log_out'
  delete '/logout', to: 'sessions#destroy'

  # get '/users/new', to: 'users#new', as: 'new_users'
  # post '/users', to: 'users#create'
  # get '/users/:id', to: 'users#show', as: 'user'


  # get '/users/:id/edit', to: 'users#edit', as: 'edit_profile'
  # put '/users/:id', to: 'users#edit'
  # patch '/users/:id', to: 'users#update'
  resources :users


  resources :schools do
    resources :courses do
      post '/favorite', to: 'favorites#create'
      resources :posts
    end
  end

  get '/myschools/:id', to: 'users#profile_schools', as: 'my_schools'
  get '/about', to: 'users#about', as: 'about'
  get '/allschools', to: 'schools#all_schools', as: 'all_schools'


  get '/users/:id/selectschool', to: 'user_schools#new', as: 'select_school'
  post '/users/:id/selectschool', to: 'user_schools#create', as: 'user_schools'
  delete '/users/:id', to: 'user_schools#destroy', as: 'destroy_school_assoc'
  get '/allusers', to: 'users#index', as: 'users_show'

  post '/users/:friend_id/friendships', to: 'friendships#create', as: 'friendships'
  delete '/users/:friend_id/friendships', to: 'friendships#destroy', as: 'destroy_friend'
  patch '/users/:friend_id/friendships', to: 'friendships#accept_friend', as: 'accept_friendship'

  get '/other_user/:id', to: 'users#view_other_user', as: 'other_user'


end
