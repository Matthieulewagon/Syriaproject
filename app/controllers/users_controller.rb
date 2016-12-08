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
      marker.infowindow render_to_string(partial: "/users/info_box", locals: { doctor: doctor })
      #marker.infowindow docotor.address
     # marker.picture({
     #    :url     => "/img/blank.png",
     #    :width   => 32,
     #    :height  => 32
     #    })
     # marker.json({:title => doctor.first_name})
  end
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
