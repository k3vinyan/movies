class Movie < ActiveRecord::Base
  has_many :users

  include HTTParty

  base_uri "https://api.themoviedb.org"

  def initialize
    @options = { query: { api_key: "14bcb6c3426d5e9a2bf0f8d393e9b38f" } }
  end

  def find_movies(input)
    @options[:query] = @options[:query].merge(query: input)
    self.class.get("/3/search/movie/", @options )
  end

  def top_rated_movies
    self.class.get("/3/movie/top_rated", @options)
  end

  def popular_movies
    self.class.get("/3/movie/popluar", @options)
  end

  def now_playing_movies
    self.class.get("/3/movie/now_playing", @options)
  end

  def upcoming_movies
    self.class.get("3/movie/upcoming", @options)
  end



end
