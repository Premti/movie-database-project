class MovieCharactersController < ApplicationController
  before_action :set_movie_character, only: [:show, :edit, :update, :destroy]

  def index
    @movie_characters = MovieCharacter.all
  end

 
  private
   
    def set_movie_character
      @movie_character = MovieCharacter.find(params[:id])
    end


    def movie_character_params
      params.require(:movie_character).permit(:movie_id, :character_id)
    end
end