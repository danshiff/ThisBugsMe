class AddTagNumToContainers < ActiveRecord::Migration
  def change
  	add_column :containers, :max_tags_on_pin, :integer
  end
end
