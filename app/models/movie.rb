class Movie < ActiveRecord::Base
  has_many :actor_movies
  has_many :actors, through: :actor_movies

  validates_presence_of :title, :year
  validates_numericality_of :year
end
