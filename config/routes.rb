Rails.application.routes.draw do

  get '/' => 'teams#index'
  get '/teams' => 'teams#index'

  get '/teams/:id' => 'teams#show'

  get '/teams/new' => 'teams#new'
  post '/teams' => 'teams#create'

  get '/teams/:id/edit' => 'teams#edit'
  patch '/teams/:id' => 'teams#update'

  

end
