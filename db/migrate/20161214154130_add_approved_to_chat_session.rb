class AddApprovedToChatSession < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_sessions, :approved, :boolean, default: false
  end
end
