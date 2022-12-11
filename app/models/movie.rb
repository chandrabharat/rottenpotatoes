class Movie < ActiveRecord::Base
  def all_ratings
    ratings = ["G", "PG", "PG-13", "NC-17", "R"]
    return ratings
  end
end