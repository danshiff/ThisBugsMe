class AddBoxStuff < ActiveRecord::Migration
  def change
  	add_column :containers, :min_unique, :int
  	add_column :containers, :max_unique, :int
  	add_column :containers, :uniq_labels, :int
  	add_column :containers, :typed_labels, :int
  	add_column :containers, :handwritten_labels, :int
  	add_column :containers, :unsure_labels, :int
  	add_column :containers, :obstructed_labels, :int
  	add_column :containers, :damaged_labels, :int
  	add_column :containers, :biggest_bug, :string
  	add_column :containers, :smallest_bug, :string
  	add_column :containers, :in_box_label, :string
  	add_column :containers, :on_box_label, :string
  	add_column :containers, :near_box_label, :string
  end
end
