class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :fetch_current_user
  before_action :fetch_all_characters


  

  private
  def fetch_current_user
    # Check if there's someone logged in whose data we need to load for them.
    if session[:user_id].present?
    	@current_user = User.find_by :id => session[:user_id]
  		@client = Taric.client(region: :oce)
  		@summoner_name = @client.summoners_by_names(summoner_names: "#{@current_user.username}")
      # .find_by is safer than .find for non-existent IDs because it won't throw an error.
      # Stop trying to log this user_id in if we can't find them in the database.
      session[:user_id] = nil unless @current_user.present?
    end
  end

  def fetch_all_characters
    unless Character.count >= 126

    @client = Taric.client(region: :oce)
    characters = @client.static_champions["data"]

       characters.each do |char|
	       Character.create :name => "#{char[1]['name']}", :image => "http://ddragon.leagueoflegends.com/cdn/5.13.1/img/champion/#{char[1]['key']}.png"
       end

    end
  end


end
