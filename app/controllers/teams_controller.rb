class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(:name => params[:team][:name])
    if @team.save
      flash[:notice] = "This team has been added successfully."
      redirect_to teams_path
    else
      render 'new'
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(:name => params[:team][:name])
    if @team.save
      flash[:notice] = "Your team was successfully updated."
      redirect_to('/')
    else
      flash[:alert] = "Something went wrong. Try again."
      render 'edit'
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    flash[:notice] = "Team successfully deleted."
    redirect_to('/')
  end
end
