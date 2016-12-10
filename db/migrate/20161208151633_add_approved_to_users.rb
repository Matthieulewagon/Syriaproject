class AddApprovedToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column role: 'doctor' , :approved, :boolean, :default => false, :null => false
  end
end
