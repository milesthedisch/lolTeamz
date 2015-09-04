class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.text :image

      t.timestamps null: false
    end
  end
end
