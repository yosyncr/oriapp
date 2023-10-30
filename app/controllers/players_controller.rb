class PlayersController < ApplicationController

  def index
  @players = Player.all
  end

  def new
    @tweet = Tweet.new
  end

  
end
