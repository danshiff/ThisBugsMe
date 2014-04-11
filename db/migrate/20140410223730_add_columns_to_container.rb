class AddColumnsToContainer < ActiveRecord::Migration
  def change
  	add_column :containers, :num_bugs, :integer
  	add_column :containers, :box_num, :integer
  end
end
