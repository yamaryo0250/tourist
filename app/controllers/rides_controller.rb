class RidesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :ride_find, except: [:index, :new, :create]
  before_action :redirect, only: [:edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    if @ride.update(ride_params)
      redirect_to ride_path
    else
      render :edit
    end
  end

  def destroy
    @ride.destroy
    redirect_to root_path
  end




  private

  def ride_params
    params.require(:ride).permit(:plan, :displacement_id, :text, :style_id, :term_id, :area_id, :day).merge(user_id: current_user.id)
  end

  def ride_find
    @ride = Ride.find(params[:id])
  end

  def redirect
    redirect_to action: :index unless current_user.id == @ride.user_id
  end
end
