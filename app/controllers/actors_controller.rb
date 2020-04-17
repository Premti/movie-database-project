class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]


  def index
    @actors = Actor.all
  end

 
  def show
    set_actor
  end


  def new
    @actor = Actor.new
  end

  def edit
    set_actor
  end

  def create
   @actor = Actor.new(actor_params)
    @actor.save
    redirect_to actor_path(@actor)
  end

 
  def update
    @actor = Actor.find(params[:id])
    @actor.update(actor_params)
    redirect_to actor_path(@actor)
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    redirect_to actors_path
  end

  private
    
    def set_actor
      @actor = Actor.find(params[:id])
    end

    def actor_params
      params.require(:actor).permit(:name, :gender, :age)
    end
end
