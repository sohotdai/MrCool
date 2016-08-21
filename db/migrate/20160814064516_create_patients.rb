class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name, :limit => 30, :default => "", :null => false
      t.string :middle_name, :limit => 10, :default => "", :null => false
      t.string :last_name, :limit => 30, :default => "", :null => false
      t.string :medical_record_number, :limit => 10, :default => "", :null => false
      t.string :year, :limit => 6, :default => "", :null => false
      t.string :month, :limit => 6, :default => "", :null => false
      t.string :day, :limit => 6, :default => "", :null => false
      t.integer :gender, :default => 0, :null => false
      t.integer :status, :default => 1, :null => false
      t.integer :location_id, :default => 0, :null => false
      t.integer :viewed_count, :default => 0, :null => false
      t.integer :is_deleted, :default => 0, :null => false
      t.text :description

      t.timestamps
    end
  end
end
