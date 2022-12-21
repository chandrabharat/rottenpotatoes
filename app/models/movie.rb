class Movie < ActiveRecord::Base
  def self.all_ratings
    ratings = ["G", "PG", "PG-13", "R"]
    return ratings
  end

  def self.with_ratings(ratings)
    where(rating: ratings.keys)
  end

  def sort_field(params)
    return self.title if params[:sort] == "title"
    return self.director if params[:sort] == "director"
    return self.year if params[:sort] == "year"
  end
end