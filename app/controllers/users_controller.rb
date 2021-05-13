class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rides = @user.rides
  end
end
