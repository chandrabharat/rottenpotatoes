class Movie < ActiveRecord::Base
  def self.all_ratings
    ratings = ["G", "PG", "PG-13", "R"]
    return ratings
  end

  def self.with_ratings(ratings_list)
    # TODO: Write an algo to return the movies with the rating ratings
    if ratings_list.empty?
      return Movie.all
    else
      return Movie.all.select{ |movie| ratings_list.include? movie.rating }
    end
  end
end