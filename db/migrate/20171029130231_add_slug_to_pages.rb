class AddSlugToPages < ActiveRecord::Migration[5.1]
  def change
  	add_column :pages, :slug, :string, unique: true
  end
end
