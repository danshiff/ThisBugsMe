class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.integer :connection_id
      
      t.timestamps
    end
  end
end
