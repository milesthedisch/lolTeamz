class PagesController < ApplicationController
  def index
  	characters = Character.all
	  	characters.each do |c|
	  		c.destroy unless c.image
	  	end
	@characters = characters 
  end
end
