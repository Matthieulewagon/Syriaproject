class ChatSession < ApplicationRecord
  belongs_to :doctor, class_name: "User"
  belongs_to :patient, class_name: "User"
  belongs_to :request
  has_many :chat_messages

  def activate
    self.active = true
  end

  def deactivate
    self.activate = false
  end

  def approve_doctor_info
    self.approved = true
  end
end
