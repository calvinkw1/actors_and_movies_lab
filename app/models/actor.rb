class Actor < ActiveRecord::Base
<<<<<<< HEAD
  validates :name, presence: true
  validates :name, length: {in: 2...20}
  has_many :movie_actors, dependent: :destroy
  has_many :movies, through: :movie_actors
=======
  has_many :actors_movies, dependent: :destroy
  has_many :movies, through: :actors_movies
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05
end
