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

     redirect_to users_path
  end

  def request_params
      params.require(:request).permit(:description, :status,  :patient_id, :category_id, :doctor_id)
  end


end
