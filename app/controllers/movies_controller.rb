class MoviesController < ApplicationController

def index

@movies = Movie.all

end


def show

@movie = Movie.find(params[:id])

end

def new_form

end

def create_row

@movie = Movie.new
@movie.title = params[:title]
@movie.year = params[:year]
@movie.duration = params[:duration]
@movie.description = params[:description]
@movie.image_url = params[:image_url]
@movie.save

  redirect_to("/movies/" + @movie.id.to_s)


end


def delete_movie

  @movie = Movie.find(params[:id])
  @movie.destroy
  redirect_to("/movies/")

end


def edit_form

  @movie = Movie.find(params[:id])

end

def update_row

  @movie = Movie.find(params[:id])
  @movie.title = params[:title]
  @movie.year = params[:year]
  @movie.duration = params[:duration]
  @movie.description = params[:description]
  @movie.image_url = params[:image_url]
  @movie.save

    redirect_to("/movies/" + @movie.id.to_s)

end


end
