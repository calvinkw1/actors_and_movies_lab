class ActorsController < ApplicationController
<<<<<<< HEAD
  
=======
  before_action :find_actor, only: [:edit, :show, :update, :destroy, :add_movie, :remove_movie]

>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
  def index
    @actors = Actor.all
  end

<<<<<<< HEAD
  def new
    @actor = Actor.new
  end

  def show
    @actor = Actor.find_by_id(params[:id])
    @actor_movies = @actor.movies.all
    @movies = Movie.all - @actor.movies
  end

  def edit
    @actor = Actor.find_by_id(params[:id])
  end

  def create
    @actor = Actor.create actor_params
    if @actor.save
    redirect_to actors_path, notice: "Actor Added!"
    else
      render :new
    end
  end

  def update
    @actor = Actor.find_by_id(params[:id])
    @actor.update_attributes actor_params
    if @actor.save
      redirect_to actor_path, notice: "Actor Updated!"
    else
      render :edit
    end
  end

  def destroy
    actor = Actor.find_by_id(params[:id])
    actor.destroy
    redirect_to actors_path, notice: "Actor successfully deleted!"
  end

  def add_movie
    actor = Actor.find_by_id(params[:id])
    movie = Movie.find_by_id(params[:movie_id])
    actor.movies << movie
    redirect_to actor_path, notice: "Movie added!"
  end

  def remove_movie
    actor = Actor.find_by_id(params[:id])
    movie = Movie.find_by_id(params[:movie_id])
    actor.movies.delete(movie)
    redirect_to actor_path
  end

  private
  def actor_params
    params.require(:actor).permit(:name)
  end

=======
  def create
    binding.pry
    Actor.create actor_params
    redirect_to actors_path
  end

  def new
    @actor = Actor.new
  end

  def edit
  end

  def show
    @movies = Movie.all - @actor.movies
  end

  def update
    @actor.update_attributes actor_params
    redirect_to @actor
  end

  def destroy
    @actor.destroy
    redirect_to actors_path
  end

  def add_movie
    @actor = Actor.find(params[:id])
    movie = Movie.find(movie_params[:id])
    unless @actor.movies.include? movie
      @actor.movies << movie
    end
    redirect_to @actor
  end

  def remove_movie
    movie = Movie.find(params[:movie_id])
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
