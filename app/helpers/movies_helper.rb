module MoviesHelper

def poster_link(input)
  "http://image.tmdb.org/t/p/w154/" + input.to_s
end

end
