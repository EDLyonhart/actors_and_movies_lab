Rails.application.routes.draw do

<<<<<<< HEAD
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
=======
  resources :movies
  resources :actors

  post '/movies/:id/actors/new' => 'movies#add_actor', as: :add_actor
  delete 'movies/:id/actors/:actor_id' => 'movies#remove_actor', as: :remove_actor

  post '/actors/:id/movies/new' => 'actors#add_movie', as: :add_movie
  delete '/actors/:id/movies/:movie_id' => 'actors#remove_movie', as: :remove_movie

  root 'site#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
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
