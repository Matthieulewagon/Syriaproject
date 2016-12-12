class CreateChatSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :chat_sessions do |t|
      t.references :doctor
      t.references :request
      t.references :patient
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
