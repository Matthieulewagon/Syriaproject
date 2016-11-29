class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :phone_number
      t.string :skype_username
      t.string :first_name
      t.string :last_name
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
