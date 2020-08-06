class MoviesController < ApplicationController
  def index
    movie = Movie.new
    movie.id = 232
    movie.name = 'test movie'
    movie.year = 2002

    render json: MovieSerializer.new(movie).serializable_hash.to_json
  end
end
