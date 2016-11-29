class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :description
      t.string :status
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
