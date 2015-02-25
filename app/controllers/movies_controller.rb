class MoviesController < ApplicationController
<<<<<<< HEAD
=======
  before_action :find_movie, only: [:edit, :show, :destroy, :add_actor, :remove_actor]
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  
  def index
    @movies = Movie.all
  end

<<<<<<< HEAD
=======
  def create
    Movie.create movie_params 
    redirect_to movies_path
  end

>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  def new
    @movie = Movie.new
  end

<<<<<<< HEAD
  def show
    @movie = Movie.find(params[:id])
    @movie_actors = @movie.actors.all
    @actors = Actor.all - @movie.actors
  end

  def edit
    @movie = Movie.find(params[:id])
=======
  def edit
  end

  def show
    @actors = Actor.all - @movie.actors
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  end

  def create
    Movie.create form_params
    redirect_to movies_path
  end

  def update
<<<<<<< HEAD
    movie = Movie.find(params[:id])
    movie.update_attributes form_params
    redirect_to movie_path(movie)
=======
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
