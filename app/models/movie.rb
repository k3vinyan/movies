class Movie < ActiveRecord::Base
  has_many :users

  include HTTParty

  base_uri "https://api.themoviedb.org"

  def initialize(optons)
    @options = { query: { api_key: "14bcb6c3426d5e9a2bf0f8d393e9b38f" } }
  end

  def find_movies(input)
    @options[:query] = @options[:query].merge(query: input)
    puts @options
    self.class.get("/3/search/movie/", @options )
  end
end
