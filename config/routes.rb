Rails.application.routes.draw do

root 'site#index'

resources :actors
resources :movies

post '/movies/:id/actors/new' => 'movies#add_actor', as: :add_actor
delete 'movies/:id/actors/:actor_id' => 'movies#remove_actor', as: :remove_actor

post '/actors/:id/movies/new' => 'actors#add_movie', as: :add_movie
delete '/actors/:id/movies/:movie_id' => 'actors#remove_movie', as: :remove_movie

  # resources :actors do
  #   resources :movies, shallow: true
  # end

  # resources :movies do
  #   resources :actors, shallow: true
  # end
end


#  Prefix Verb   URI Pattern                            Controller#Action
#         root GET    /                                      site#index
#       actors GET    /actors(.:format)                      actors#index
#              POST   /actors(.:format)                      actors#create
#    new_actor GET    /actors/new(.:format)                  actors#new
#   edit_actor GET    /actors/:id/edit(.:format)             actors#edit
#        actor GET    /actors/:id(.:format)                  actors#show
#              PATCH  /actors/:id(.:format)                  actors#update
#              PUT    /actors/:id(.:format)                  actors#update
#              DELETE /actors/:id(.:format)                  actors#destroy
#       movies GET    /movies(.:format)                      movies#index
#              POST   /movies(.:format)                      movies#create
#    new_movie GET    /movies/new(.:format)                  movies#new
#   edit_movie GET    /movies/:id/edit(.:format)             movies#edit
#        movie GET    /movies/:id(.:format)                  movies#show
#              PATCH  /movies/:id(.:format)                  movies#update
#              PUT    /movies/:id(.:format)                  movies#update
#              DELETE /movies/:id(.:format)                  movies#destroy
#    add_actor POST   /movies/:id/actors/new(.:format)       movies#add_actor
# remove_actor DELETE /movies/:id/actors/:actor_id(.:format) movies#remove_actor
#    add_movie POST   /actors/:id/movies/new(.:format)       actors#add_movie
# remove_movie DELETE /actors/:id/movies/:movie_id(.:format) actors#remove_movie