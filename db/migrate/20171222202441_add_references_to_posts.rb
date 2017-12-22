class AddReferencesToPosts < ActiveRecord::Migration[5.1]
  def change
    change_column_null :blogs, :user_id, false, 1
    remove_column :posts, :blog_id
    add_reference :posts, :blog, foreign_key: true
    change_column_null :posts, :blog_id, false, 1
  end
end
