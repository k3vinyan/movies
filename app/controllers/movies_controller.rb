class MoviesController < ApplicationController

  def index
  end

  def create
    @movies = Movie.new.find_movies(params[:search])
  end

  def show
    @movies = Movie.new.find_movies(params[:search])
  end

  def top_rated
    @movies = Movie.new
    @movies = @movies.top_rated_movies
    render 'top_rated'
  end

  def of_the_day
    @movies = Movie.new.popular_movies
    render 'top_rated'
  end

  def now_playing
    @movies = Movie.new.now_playing_movies
    render 'top_rated'
  end

  def upcoming
    @movies = Movie.new.now_playing_movies
    render 'top_rated'
  end

  def search
  end

end
