class UsersController < ApplicationController
  def index
    @doctors = User.where(role: 'doctor')
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @hash = Gmaps4rails.build_markers(@user.address) do |user, marker|
     marker.lat user.latitude
     marker.lng user.longitude
   end
  end

  def update
  end
end
