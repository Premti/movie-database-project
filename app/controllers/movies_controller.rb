class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

 
  def index
    @movies = Movie.all
  end

  def show
    set_movie
  end


  def new
    @movie = Movie.new
  end

 
  def edit
  end


  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movie_path(@movie)
  end

  private
 
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :genre, :synopsis, :release_year)
    end
end
