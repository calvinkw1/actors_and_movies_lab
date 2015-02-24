class ActorsController < ApplicationController
  
  def index
    @actors = Actor.all
  end

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

end
