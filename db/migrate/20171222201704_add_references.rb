class AddReferences < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :user_id
    add_reference :blogs, :user, foreign_key: true
  end
end
