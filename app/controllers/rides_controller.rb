class RidesController < ApplicationController

  respond_to :json

  def index
    @rides = Ride.all
    respond_with(@rides)
  end

  def show
    @ride = Ride.find(params[:id])
    respond_with(@ride)
  end

end
