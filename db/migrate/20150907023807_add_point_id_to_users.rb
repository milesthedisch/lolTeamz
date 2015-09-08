class AddPointIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :point_id, :integer
  end
end
