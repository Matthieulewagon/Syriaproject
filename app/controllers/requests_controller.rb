class RequestsController < ApplicationController
  def new
    @doctor = User.find(params[:user_id])
    @request = Request.new
  end

  def create
      @request = Request.new()
      #@request.update_attributes(doctor_id: params[:user_id], patient_id: current_user.id, description: params[:request][:description], category_id: 1)
      @request.update_attributes(doctor_id: params[:user_id], description: params[:request][:description], patient_id: current_user.id)
      #@request.update_attributes(doctor_id: params[:user_id])
     @request.save!

     redirect_to patient_dashboard_path(current_user)
  end

  def accept
    @request = Request.find(params[:id])
    @request.approve
    @chat_session = ChatSession.create!(doctor: @request.doctor, request: @request, patient: @request.patient)
    @chat_session.activate
    redirect_to doctor_dashboard_path(current_user)
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to patient_dashboard_path(current_user)
  end

  def request_params
      params.require(:request).permit(:description, :status,  :patient_id, :category_id, :doctor_id)
  end


end
