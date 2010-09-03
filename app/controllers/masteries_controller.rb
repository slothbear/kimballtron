class MasteriesController < ApplicationController
  def edit
    @masteries = current_farmer.farms.first.masteries
  end

  def update
    @masteries = Mastery.update(params[:masteries].keys, params[:masteries].values).reject {|m| m.errors.empty?}
    
    if @masteries.empty?   
      flash[:notice] = "masteries updated"  
      farmer = Mastery.find(params[:masteries].first.first).farm.farmer
      redirect_to farmer_path(farmer)
    else  
      render :action => 'edit'  
    end
  end
end
