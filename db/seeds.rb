# Name,marketOrder,level,hours,cost,sell_for,xp,type,M1,M2,M3
File.readlines("#{Rails.root}/db/crops.csv").each do |line|
    name, market_order, level, buy,
    harvest_time, sell, xp, family,
    mastery_1, mastery_2, mastery_3 = line.split(",")

  crop = Crop.find_or_create_by_name(name)
  crop.update_attributes(
     :level => level,
     :harvest_time => harvest_time,
     :buy => buy,
     :sell => sell,
     :xp => xp,
     :family => family,
     :mastery_1 => mastery_1,
     :mastery_2 => mastery_2,
     :mastery_3 => mastery_3
   )

# "Farmvilel Profit Sheet" doesn't include (my) market_order, so existing
# records won't have market_order.  Just the new ones added this time.
# TODO: crufty; rethink crop import strategy.
  if market_order != ""
    crop.update_attributes(:market_order => market_order)
  end
end