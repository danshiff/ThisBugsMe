class ChangeType < ActiveRecord::Migration
  def change
  	remove_column :containers, :type
  	add_column :containers, :box_type, :string
  end
end
