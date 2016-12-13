class UsersController < ApplicationController
  def index
    @doctors = User.where(role: "doctor")

    if params[:user].present?
      if params[:user][:specialisation].present?
        @doctors = @doctors.where(specialisation: params[:user][:specialisation])
      end

      if params[:user][:address].present?
        @doctors = @doctors.near(params[:user][:address], 5)
      end
    end
    # if address = params[:address].presence
    #   @doctors = User.where(role: 'doctor').where.not(latitude: nil, longitude: nil).near(address, 20)
    # else
    #   @doctors = User.where(role: 'doctor').where.not(latitude: nil, longitude: nil)
    # end
    # @hash = Gmaps4rails.build_markers(@doctors) do |doctor, marker|
    #   marker.lat doctor.latitude
    #   marker.lng doctor.longitude
    # end
  end

  def edit
    @user = OrgPerson.find(params[:id])

  end

  def show
    @user = User.find(params[:id])
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
     marker.lat user.latitude
     marker.lng user.longitude
   end
  end

  def update
  end
end
