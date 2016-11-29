class CreatePharmacies < ActiveRecord::Migration[5.0]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
