class AddIdToUsersTable < ActiveRecord::Migration
  def change
  	add_index :users, :id, unique: true
  end
end
