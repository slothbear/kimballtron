class CreateCrops < ActiveRecord::Migration
  def self.up
    create_table :crops do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end

  def self.down
    drop_table :crops
  end
end
