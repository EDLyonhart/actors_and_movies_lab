class ActorsController < ApplicationController

before_action :set_actor, only: [:show, :edit, :update, :destroy, :add_movie, :remove_movie]

  def index
    @actors = Actor.all
  end

  def create
    Actor.create actor_params
    redirec_to actors_path
  end

  def new
    @actor = Actor.new
    @movies = @actor.movies
  end

  def edit
  end

  def show
    @moviesin = @actor.movies
    @movies = Movie.all
    @moviesremain = @movies - @actor.movies
  end

  def update
    movie.update_attributes actor_params          #movie? wheres that coming from?
    redirect_to actor_path(actor)
  end

  def destroy
    @actor.destroy
    redirect_to actors_path
  end

  def add_movie
    movie = Movie.find(params[:movie_id])       #why movie_id?
    @actor.movies << movie
    redirect_to actor_path(@actor)
  end

  def remove_movie
    movie = Movie.find(params[:movie_id])
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

end
