class CreatePostsCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :posts_categories do |t|
      t.references :posts, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
