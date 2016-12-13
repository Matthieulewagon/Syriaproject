class ChatMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :chat_session
end
