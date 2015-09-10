class CreateCharactersTeams < ActiveRecord::Migration
  def change
    create_table :characters_teams, :id => false do |t|
      t.integer :character_id
      t.integer	:team_id
      t.timestamps null: false
    end
  end
end
