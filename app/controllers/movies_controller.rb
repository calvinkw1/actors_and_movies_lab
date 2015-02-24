class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
    @movie_actors = @movie.actors.all
    @actors = Actor.all - @movie.actors
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    Movie.create form_params
    redirect_to movies_path
  end

  def update
    movie = Movie.find(params[:id])
    movie.update_attributes form_params
    redirect_to movie_path(movie)
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to movies_path
  end

  def add_actor
    movie = Movie.find_by_id(params[:id])
    actor = Actor.find_by_id(params[:actor_id])
    movie.actors << actor
    redirect_to movie_path, notice: "Movie added!"
  end

  def remove_actor
    movie = Movie.find_by_id(params[:id])
    actor = Actor.find_by_id(params[:actor_id])
    movie.actors.delete(actor)
    redirect_to movie_path
  end

  private
  def form_params
    params.require(:movie).permit(:title, :year)
  end
end
