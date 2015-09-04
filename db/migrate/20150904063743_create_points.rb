class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :value
      t.text :title

      t.timestamps null: false
    end
  end
end
