class PatientDashboardsController < ApplicationController
  def show
    @requests_patient = Request.where(patient_id: current_user.id)
  end

  def destroy
    @request.destroy
  end
end
