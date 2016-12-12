class CreateChatMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :chat_messages do |t|
      t.references :sender
      t.references :chat_session, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
