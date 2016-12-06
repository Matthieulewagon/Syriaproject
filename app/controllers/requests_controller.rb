class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
     # @request = Request.new(request_params)
     # @request.update_attributes(patient_id: params[:user_id])
     @request = current_user.requests.create(request_params)
     @request.save
     redirect_to users_path
  end

  def request_params
      params.require(:request).permit(:description, :status,  :patient_id, :category_id, :doctor_id)
  end


end
