class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.integer :admin_id
      t.string :category_name
      t.string :category_content

      t.timestamps
    end
  end
end
