class Movie < ActiveRecord::Base
<<<<<<< HEAD
  has_many :movie_actors, dependent: :destroy
  has_many :actors, through: :movie_actors
=======
  has_many :actors_movies, dependent: :destroy
  has_many :actors, through: :actors_movies

  validates :title, :presence => true
  validates :year, {
              :presence => true,
              :numericality => {
                :greater_than_or_equal_to => 1000,
                :less_than_or_equal_to => 3000
              }
            }
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
end
