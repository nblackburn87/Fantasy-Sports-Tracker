class PlayersController < ApplicationController

  def index
    @players = Player.all
    render('players/index.html.erb')
end
