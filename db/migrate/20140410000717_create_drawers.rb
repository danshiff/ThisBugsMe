class CreateDrawers < ActiveRecord::Migration
  def change
    create_table :drawers do |t|
      t.string :name

      t.timestamps
    end
  end
end
