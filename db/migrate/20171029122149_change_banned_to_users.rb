class ChangeBannedToUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :banned, :boolean, :default => false
  end
end
