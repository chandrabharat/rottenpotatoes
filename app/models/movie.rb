class Movie < ActiveRecord::Base
  def self.all_ratings
    ratings = ["G", "PG", "PG-13", "R"]
    return ratings
  end

  def self.with_ratings(ratings)
    where(rating: ratings.keys)
  end
end