class CreateFarms < ActiveRecord::Migration
  def self.up
    create_table :farms do |t|
      t.string :name
      t.integer :plots
      t.integer :harvests_per_day
      t.integer :farmer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :farms
  end
end
