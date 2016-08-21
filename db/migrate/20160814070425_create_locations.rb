class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, :limit => 80, :default => "", :null => false
      t.string :code, :limit => 10, :default => "", :null => false

      t.timestamps
    end
  end
end
