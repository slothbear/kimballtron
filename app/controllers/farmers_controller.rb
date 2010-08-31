class FarmersController < ApplicationController
  before_filter :authenticate_farmer!

  def show
    @farmer = Farmer.find(params[:id])
    # TODO: should only have a missing farm during testing/development.
    # I don't want to auto-create a real farm here -- could mask problem
    # farms disappearing??
    if @farmer.farms.count == 0
      @farmer.farms << Farm.create(:name => "** missing farm **")
    end
    @farm = @farmer.farms.first  # current implementation assumes 1 farm

  end

end
