class CreateDiagnoses < ActiveRecord::Migration[5.0]
  def change
    create_table :diagnoses do |t|
      t.datetime :devlivery_date
      t.string :status
      t.string :description
      t.references :request, foreign_key: true
      t.references :pharmacy, foreign_key: true

      t.timestamps
    end
  end
end
