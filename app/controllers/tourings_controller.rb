class TouringsController < ApplicationController
  def index
    @ride = Ride.find(params[:ride_id])
    @touring = Touring.new
  end
end
