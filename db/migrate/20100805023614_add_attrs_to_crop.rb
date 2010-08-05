class AddAttrsToCrop < ActiveRecord::Migration
  def self.up
    add_column :crops, :market_order, :integer
    add_column :crops, :harvest_time, :integer
    add_column :crops, :buy, :integer
    add_column :crops, :sell, :integer
    add_column :crops, :xp, :integer
    add_column :crops, :family, :string
    add_column :crops, :mastery_1, :integer
    add_column :crops, :mastery_2, :integer
    add_column :crops, :mastery_3, :integer
  end

  def self.down
    remove_column :crops, :mastery_3
    remove_column :crops, :mastery_2
    remove_column :crops, :mastery_1
    remove_column :crops, :family
    remove_column :crops, :xp
    remove_column :crops, :sell
    remove_column :crops, :buy
    remove_column :crops, :harvest_time
    remove_column :crops, :market_order
  end
end
