class AlterPhotosAddColumns < ActiveRecord::Migration
  def change
  	remove_column :photos, :Picture
  	add_column :photos, :picture, :string
  	add_column :photos, :caption, :string
  end
end
