class MoviesController < ApplicationController
  
  before_action :set_movie, only: [:show, :edit, :update, :destroy]


  def index
    @movies = Movie.all
  end

  def create
    Movie.create movie_params
    redirect_to movies_path
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def show
  end

  def update
    movie.update_attributes movie_params
    redirect_to movie_path(movie)
  end

  def destroy
    movie.destroy
    redirect_to movies_path
  end

private
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year)
  end
end
