class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :description
      t.string :status
      t.string :urgency
      t.references :patient
      t.references :doctor
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
