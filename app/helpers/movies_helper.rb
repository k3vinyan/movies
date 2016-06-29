module MoviesHelper
  
  def self.find_movies(input)
    @options[:query] = @options[:query].merge(query: input)
    puts @options
    self.class.get("/3/search/movie/", @options )
  end
end
