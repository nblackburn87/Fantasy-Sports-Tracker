class PlayersController < ApplicationController

  def index
    @players = Player.all
    render('players/index.html.erb')
  end

  def new
    @player = Player.new
    render('players/new.html.erb')
  end

  def create
    @player = Player.new(:name => params[:name],
                         :goals => params[:goals],
                         :assists => params[:assists],
                         :yellows => params[:yellows],
                         :reds => params[:reds],
                         :minutes => params[:minutes],
                         :position => params[:position],
                         :team_id => params[:team_id])
    if @player.save
      flash[:notice] = "This player has been added successfully."
      redirect_to('/players')
    else
      render('players/new.html.erb')
    end
  end

  def edit
    @player = Player.find(params[:id])
    render('players/edit.html.erb')
  end

  def update
    @player = Player.find(params[:id])
    # @goals = @player.goals -----> will be needed for JQuery incrementing total updates.
    @player.update(:name => params[:name],
                   :goals => params[:goals],
                   :assists => params[:assists],
                   :yellows => params[:yellows],
                   :reds => params[:reds],
                   :minutes => params[:minutes],
                   :position => params[:position],
                   :team_id => params[:team_id])
    if @player.save
      flash[:notice] = "Your update was successfully saved!"
      redirect_to('/players')
    else
      flash[:alert] = "Your update was not saved."
      render('players/edit.html.erb')
    end
  end

  def show
    @player = Player.find(params[:id])
    render('players/show.html.erb')
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    flash[:notice] = "Player successfully deleted."
    redirect_to('/players')
  end
end



