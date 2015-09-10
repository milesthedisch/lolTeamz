class AddLoreToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :lore, :text
  end
end
