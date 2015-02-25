class ActorsController < ApplicationController
<<<<<<< HEAD

before_action :set_actor, only: [:show, :edit, :update, :destroy, :add_movie, :remove_movie]
=======
  before_action :find_actor, only: [:edit, :show, :update, :destroy, :add_movie, :remove_movie]
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05

  def index
    @actors = Actor.all
  end

  def create
<<<<<<< HEAD
    Actor.create actor_params
    redirec_to actors_path
=======
    binding.pry
    Actor.create actor_params
    redirect_to actors_path
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  end

  def new
    @actor = Actor.new
<<<<<<< HEAD
    @movies = @actor.movies
=======
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  end

  def edit
  end

  def show
<<<<<<< HEAD
    @moviesin = @actor.movies
    @movies = Movie.all
    @moviesremain = @movies - @actor.movies
  end

  def update
    movie.update_attributes actor_params          #movie? wheres that coming from?
    redirect_to actor_path(actor)
=======
    @movies = Movie.all - @actor.movies
  end

  def update
    @actor.update_attributes actor_params
    redirect_to @actor
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  end

  def destroy
    @actor.destroy
    redirect_to actors_path
  end

  def add_movie
<<<<<<< HEAD
    movie = Movie.find(params[:movie_id])       #why movie_id?
    @actor.movies << movie
    redirect_to actor_path(@actor)
=======
    @actor = Actor.find(params[:id])
    movie = Movie.find(movie_params[:id])
    unless @actor.movies.include? movie
      @actor.movies << movie
    end
    redirect_to @actor
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  end

  def remove_movie
    movie = Movie.find(params[:movie_id])
<<<<<<< HEAD
    @actor.movies.destroy(movie)
    redirect_to actor_path(@actor)
  end

  private
  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:name)
  end

=======
    @actor.movies.delete(movie)
    redirect_to @actor
  end

  private
  def movie_params
    params.require(:movie).permit(:id, :title, :year)
  end

  def actor_params
    params.require(:actor).permit(:id, :name)
  end

  def find_actor
    @actor = Actor.find(params[:id])
  end
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
end
