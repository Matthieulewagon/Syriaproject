class PatientDashboardsController < ApplicationController
  def show
    @requests_patient = Request.where(patient_id: current_user.id).where.not(status: "approved").order(created_at: :desc)
    @chat_sessions = ChatSession.where(patient_id: current_user.id).order(created_at: :desc)
  end

  def destroy
    @request.destroy
  end

  def redirect_if_doctor
    if current_user.role == 'doctor'
      redirect_to doctor_dashboard_path(current_user)
    end
  end
end
