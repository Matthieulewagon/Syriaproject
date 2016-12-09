class DoctorDashboardsController < ApplicationController
  def index
  end
  def show
    @requests_doctor = Request.where(doctor_id: current_user.id)
    # @requests = Request.where(doctor_id: params[:user_id] == doctor_id: current_user.id)
  end
end
