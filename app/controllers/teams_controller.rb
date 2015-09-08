class TeamsController < ApplicationController
 before_action :fetch_all_characters 

  def index
    @teams = Team.all 
  end

  def show
    @team = Team.find params[:id] 
    @all_characters = Character.all
  end

  def new
    @team = Team.new
  end

  def create

  end

  def update
  end

  def destroy
  end

  private   

  def team_params
    params.require(:team).permit(:teamname, :image, :characters_id)
  end

end
