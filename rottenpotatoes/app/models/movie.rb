class Movie < ActiveRecord::Base

  attr_accessible :title, :rating, :description, :release_date, :director

  def self.similar_director(director)
    Movie.where({:director => director})
  end

  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
end

