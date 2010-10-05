class AddMarketOrderToMastery < ActiveRecord::Migration
  def self.up
    add_column :masteries, :market_order, :integer
  end

  def self.down
    remove_column :masteries, :market_order
  end
end
