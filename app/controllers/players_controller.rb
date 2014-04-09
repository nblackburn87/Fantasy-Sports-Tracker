class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(:name => params[:player][:name],
                         :goals => params[:player][:goals],
                         :assists => params[:player][:assists],
                         :yellows => params[:player][:yellows],
                         :reds => params[:player][:reds],
                         :minutes => params[:player][:minutes],
                         :position => params[:player][:position],
                         :team_id => params[:player][:team_id])
    if @player.save
      flash[:notice] = "This player has been added successfully."
      redirect_to players_path
    else
      render 'new'
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    # @goals = @player.goals -----> will be needed for JQuery incrementing total updates.
    @player.update(:name => params[:player][:name],
                   :goals => params[:player][:goals],
                   :assists => params[:player][:assists],
                   :yellows => params[:player][:yellows],
                   :reds => params[:player][:reds],
                   :minutes => params[:player][:minutes],
                   :position => params[:player][:position],
                   :team_id => params[:player][:team_id])
    if @player.save
      flash[:notice] = "Your update was successfully saved!"
      redirect_to players_path
    else
      flash[:alert] = "Your update was not saved."
      render 'edit'
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    flash[:notice] = "Player successfully deleted."
    redirect_to players_path
  end
end



