class MoviesController < ApplicationController
<<<<<<< HEAD
  
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :add_actor, :remove_actor]

=======
  before_action :find_movie, only: [:edit, :show, :destroy, :add_actor, :remove_actor]
  
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  def index
    @movies = Movie.all
  end

  def create
<<<<<<< HEAD
    Movie.create movie_params
=======
    Movie.create movie_params 
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
    redirect_to movies_path
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def show
<<<<<<< HEAD
    @actors = @movie.actors
  end

  def update
    movie.update_attributes movie_params
    redirect_to movie_path(movie)
=======
    @actors = Actor.all - @movie.actors
  end

  def update
    @movie.update_attributes movie_params
    redirect_to @movie
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  def add_actor
<<<<<<< HEAD
    actor = Actor.find(params[:actor_id])
    movie.actor << actor
    redirect_to movies_path(movie)
  end

  def remove_actor
    actor = Actor.find(params[:actor_id])
    @movie.actors.destroy(actor)
    redirect_to movie_path(movie)
  end

private
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year)
  end
=======
    actor = Actor.find(actor_params[:id])
    unless @movie.actors.include? actor
      @movie.actors << actor
    end
    redirect_to @movie
  end

  def remove_actor
    @movie.actors.delete(Actor.find(params[:actor_id]))
    redirect_to @movie 
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year)
  end

  def actor_params
    params.require(:actor).permit(:id, :name)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
end
