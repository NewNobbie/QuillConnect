class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.datetime :comment_date
      t.text :comment_content
      t.integer :report, default: 0, null: false

      t.timestamps
    end
  end
end
