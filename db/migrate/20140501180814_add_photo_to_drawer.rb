class AddPhotoToDrawer < ActiveRecord::Migration
  def change
  	add_column :drawers, :photo_url, :string
  end
end
