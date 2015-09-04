class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :teamname
      t.text :image

      t.timestamps null: false
    end
  end
end
