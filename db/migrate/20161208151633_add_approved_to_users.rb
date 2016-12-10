class AddApprovedToUsers < ActiveRecord::Migration[5.0]
  def self.up
    add_column role: 'doctor', :approved, :boolean, default: false
    end
  end

end

