class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :description
      t.string :status
      t.string :urgency
      t.integer :patient_id, foreign_key: true, index:true
      t.integer :doctor_id, foreign_key: true, index:true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
