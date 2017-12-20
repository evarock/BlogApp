class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :description
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end