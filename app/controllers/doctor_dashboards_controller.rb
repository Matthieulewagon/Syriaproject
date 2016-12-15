class DoctorDashboardsController < ApplicationController
  before_action :redirect_if_patient
  def index
  end
  def show
    @requests_doctor = Request.where(doctor_id: current_user.id).order(created_at: :desc)
    @chat_sessions = ChatSession.where(doctor_id: current_user.id).order(created_at: :desc)
    # @requests = Request.where(doctor_id: params[:user_id] == doctor_id: current_user.id)
  end

  def destroy
    @request.destroy
  end

  def redirect_if_patient
    if current_user.role == 'patient'
      redirect_to patient_dashboard_path(current_user)
    end
  end
end
