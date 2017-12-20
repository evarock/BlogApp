class EditAdminField < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :admin, :boolean, null: false, default: false
  end
end
