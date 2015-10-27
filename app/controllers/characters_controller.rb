

class CharactersController < ApplicationController

  def show
  	@character = Character.find params[:id]
  end

  def index
  	@characters = Character.all
  end
  
end
