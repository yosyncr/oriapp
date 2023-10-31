class PlayersController < ApplicationController

  def index
   @players = Player.all
  end

  def new
   @player = Player.new
  end

  def create
    Player.create(player_params)
    redirect_to '/'
  end

  private
  def player_params
    params.require(:player).permit(:name)
  end
end
