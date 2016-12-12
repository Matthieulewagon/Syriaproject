class ChatSession < ApplicationRecord
  belongs_to :doctor, class_name: "User"
  belongs_to :request
  has_many :chat_messages

  def activate
    self.active = true
  end

  def deactivate
    self.activate = false
  end
end
