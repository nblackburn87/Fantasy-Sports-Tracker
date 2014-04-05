class TeamsController < ApplicationController

  def index
    @teams = Team.all
    render('teams/index.html.erb')
  end

  def new
    @team = Team.new
    render('teams/new.html.erb')
  end

  def create
    @team = Team.new(:name => params[:name])
    if @team.save
      flash[:notice] = "This team has been added successfully."
      redirect_to('/teams')
    else
      render('teams/new.html.erb')
    end
  end

  def edit
    @team = Team.find(params[:id])
    render('teams/edit.html.erb')
  end

  def update
    @team = Team.find(params[:id])
    @team.update(:name => params[:name])
    if @team.save
      flash[:notice] = "Your team was successfully updated."
      redirect_to('/')
    else
      flash[:alert] = "Something went wrong. Try again."
      render('teams/edit.html.erb')
    end
  end

  def show
    @team = Team.find(params[:id])
    render('teams/show.html.erb')
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    flash[:notice] = "Team successfully deleted."
    redirect_to('/')
  end
end
