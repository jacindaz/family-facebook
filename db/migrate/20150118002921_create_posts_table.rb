class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :ancestry
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
