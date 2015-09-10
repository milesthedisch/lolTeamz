class TeamsController < ApplicationController 


  def index
    @teams = Team.all 
  end

  def show
    @characters = Character.all
    @team = Team.find params[:id] 
    @users_in_team = @team.users
    @team_count = @users_in_team.count
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.create team_params
    redirect_to team
  end

  def update

  end

  def destroy
    team = Team.find params[:id]
    team.destroy
    redirect_to teams_path
  end

  def join
    @team = Team.find params[:id]
    @team_count = @team.users.count
    if @team_count <= 5
      @current_user.update_attribute(:team_id, @team.id)
      redirect_to @team
    else
      redirect_to teams_path
    end   
  end

  def leave
    @team = Team.find params[:id]
    @current_user.update_attribute(:team_id, nil)
    redirect_to root_path
  end

  private   

  def team_params
    params.require(:team).permit(:teamname, :image, :characters_id)
  end
end
