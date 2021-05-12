class RidesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @rides = Ride.order('created_at DESC')
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.create(ride_params)
    if @ride.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def edit
    @ride = Ride.find(params[:id])
    unless user_signed_in? && current_user.id == @ride.user.id
      redirect_to action: :index
    end
  end

  def update
    @ride = Ride.find(params[:id])
    if @ride.update(ride_params)
      redirect_to ride_path
    else
      render :edit
    end
  end

  private
  def ride_params
    params.require(:ride).permit(:plan, :displacement_id, :text, :style_id, :term_id, :area_id, :day).merge(user_id: current_user.id)
  end
end
