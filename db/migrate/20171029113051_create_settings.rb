class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.string :site_name
      t.integer :posts_per_page
      t.boolean :under_maintenace

      t.timestamps
    end
  end
end
