class MasteriesController < ApplicationController
  def edit
    @masteries = current_farmer.farm.masteries
  end

  def update
    if params['cancel']
      flash[:notice] = "edit cancelled; no masteries were updated."
      redirect_to farmer_path(current_farmer)
    else
      @masteries = Mastery.update(params[:masteries].keys,
        params[:masteries].values).reject {|m| m.errors.empty?}

      if @masteries.empty?
        flash[:notice] = "masteries updated"
        redirect_to farmer_path(current_farmer)
      else
        render :action => 'edit'
      end

    end # if cancel
  end # update
end # class
