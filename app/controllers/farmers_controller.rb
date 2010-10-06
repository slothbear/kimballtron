class FarmersController < ApplicationController
  before_filter :authenticate_farmer!

  def show
    @farmer = Farmer.find(params[:id])
    # TODO: [nilfarm] should only have a missing farm during testing/development.
    # I don't want to auto-create a real farm here -- could mask problem
    # farms disappearing??
    if @farmer.farm.nil?
      @farmer.farm = Farm.create(:name => "** missing farm **")
    end
    @farm = @farmer.farm

  end

end
