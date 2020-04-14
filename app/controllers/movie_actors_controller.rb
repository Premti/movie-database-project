class MovieActorsController < ApplicationController
  before_action :set_movie_actor, only: [:show, :edit, :update, :destroy]

  def index
    @movie_actors = MovieActor.all
  end

  private

    def set_movie_actor
      @movie_actor = MovieActor.find(params[:id])
    end

  
    def movie_actor_params
      params.require(:movie_actor).permit(:movie_id, :actor_id)
    end
end