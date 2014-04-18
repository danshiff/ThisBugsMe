class AddBoxType < ActiveRecord::Migration
  def change
  	add_column :containers, :type, :string
  end
end
