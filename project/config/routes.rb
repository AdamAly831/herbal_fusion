Rails.application.routes.draw do

  root 'recipes#warning'

  get '/recipes/home' => 'recipes#index'

  get '/recipes/new' => 'recipes#new'

  post '/recipes' => 'recipes#create'

  get '/users/new' => 'users#new'

  post '/users' => 'users#create'

  post '/comments' => 'comments#create'

  post '/allergies' => 'allergies#create'

  get '/recipes/:id' => 'recipes#show'

  patch '/users/:id/edit' => 'users#edit'

  delete '/users/destroy' => 'users#destroy'

  delete '/recipes/destroy' => 'recipes#destroy'


end
