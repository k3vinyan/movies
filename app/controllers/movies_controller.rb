class MoviesController < ApplicationController

  def index
  end

  def create
    @movie = Movie.new
    @movies = @movie.find_movies(params[:search])
  end

  def show
    @movie = Movie.new
    @movies = @movie.find_movies(params[:search])
    puts 
  end
end
