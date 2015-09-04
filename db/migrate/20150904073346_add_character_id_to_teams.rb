class AddCharacterIdToTeams < ActiveRecord::Migration
  def change
  	  	add_column :teams, :character_id, :integer
  end
end
