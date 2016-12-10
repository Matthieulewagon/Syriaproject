class AddApprovedToUsers < ActiveRecord::Migration[5.0]
  def self.up
    add_column :users, :approved, :boolean, default: false
    end
  end

end

