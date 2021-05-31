class TouringsController < ApplicationController
  def index
    @ride = Ride.find(params[:ride_id])
    @touring = Touring.new
  end

  def create
  
    @touring = Touring.new(touring_params)
    if @touring.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def touring_params
    params.require(:touring).permit(:ride_id).merge(user_ids: current_user.id)
  end


  private
    
end
