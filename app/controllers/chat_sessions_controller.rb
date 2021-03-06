class ChatSessionsController < ApplicationController
  before_action :set_chat_session, except: [:new_message, :approve]

  def show
    @doctor = @chat_session.doctor
    @request = Request.find(@chat_session.request_id)
    @patient = @request.patient
    @chat_messages = @chat_session.chat_messages
  end

  def new_message
    @chat_session = ChatSession.find(params[:chat_session_id])
    @chat_session.chat_messages.create!(content: params[:chat_message][:content],
                                        sender_id: current_user.id)
    redirect_to doctor_dashboard_chat_session_path(@chat_session)
  end

  def approve
    @chat_session = ChatSession.find(params[:chat_session_id])
    @chat_session.approve_doctor_info
    @chat_session.save
    redirect_to doctor_dashboard_chat_session_path(@chat_session)
  end

  private

  def set_chat_session
    @chat_session = ChatSession.find(params[:id])
  end
end
