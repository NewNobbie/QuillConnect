class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.text :description
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
