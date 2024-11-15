class AllowNullUserIdInPostsAndComments < ActiveRecord::Migration[7.2]
  def change
    change_column_null :posts, :user_id, true
    change_column_null :comments, :user_id, true
    change_column_null :categories, :admin_id, true
  end
end
