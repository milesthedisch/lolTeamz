class AddTeamIdToCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :team_id, :integer
  end
end
