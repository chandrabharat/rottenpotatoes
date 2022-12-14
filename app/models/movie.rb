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

  def sort_field(params)
    return self.title if params[:sort] == "title"
    return self.director if params[:sort] == "director"
    return self.year if params[:sort] == "year"
  end
end