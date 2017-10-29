class ChangeRoleToUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :role, :string, :default => 'author'
  end
end
