class AddSpecialisationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :specialisation, :string
  end
end
