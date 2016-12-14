class ChangeCategoryToGender < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :category, :gender
  end
end
