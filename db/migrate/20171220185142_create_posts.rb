class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :body, null: false
      t.integer :blog_id, null: false

      t.timestamps
    end
  end
end
