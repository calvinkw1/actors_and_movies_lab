class Movie < ActiveRecord::Base
  has_many :movie_actors, dependent: :destroy
  has_many :actors, through: :movie_actors
end
