class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.all
  end

  def show
    set_character
  end

  def new
    @character = Character.new
  end


  def edit
    set_character
  end

  
  def create
    @character = Character.new(character_params)
    @character.save
    redirect_to character_path(@character)
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to character_path(@character)
  end

  private
   
    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:name, :gender, :profession)
    end
end
