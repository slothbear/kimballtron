class CreateMasteries < ActiveRecord::Migration
  def self.up
    create_table :masteries do |t|
      t.integer :stars
      t.integer :additional_harvests
      t.integer :crop_id
      t.integer :farm_id

      t.timestamps
    end
  end

  def self.down
    drop_table :masteries
  end
end
