class UsersController < ApplicationController
  def index
    if address = params[:address].presence
      @doctors = User.where(role: 'doctor').where.not(latitude: nil, longitude: nil).near(address, 20)
    else
      @doctors = User.where(role: 'doctor').where.not(latitude: nil, longitude: nil)
    end
    @hash = Gmaps4rails.build_markers(@doctors) do |doctor, marker|
      marker.lat doctor.latitude
      marker.lng doctor.longitude
    end
  end

  def edit
    @user = OrgPerson.find(params[:id])

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
