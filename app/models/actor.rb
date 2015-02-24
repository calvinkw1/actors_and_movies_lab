class Actor < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: {in: 2...20}
  has_many :movie_actors, dependent: :destroy
  has_many :movies, through: :movie_actors
end
