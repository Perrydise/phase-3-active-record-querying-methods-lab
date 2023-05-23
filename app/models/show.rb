class Show < ActiveRecord::Base

    def self.highest_rating
      shows = Show.all
      top_rating =  shows.max_by{ |show| show[:rating]}
      puts top_rating
      top_rating.rating        
    end

    def self.most_popular_show
      shows = Show.all
      top_rating =  shows.max_by{ |show| show[:rating]}
      puts top_rating
      top_rating
    end

    def self.lowest_rating
      shows = Show.all
      lowest_rating =  shows.min_by{ |show| show[:rating]}
      puts lowest_rating
      lowest_rating.rating
    end

    def self.least_popular_show
      shows = Show.all
      lowest_rating =  shows.min_by{ |show| show[:rating]}
      puts lowest_rating
      lowest_rating
    end

    def self.ratings_sum
      shows = Show.all
      ratings = shows.map { |element| element.rating}
      ratings.sum
    end

    def self.popular_shows
      shows = Show.all
      shows.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
      shows = Show.all
      shows.order(name: :asc)
    end

end
