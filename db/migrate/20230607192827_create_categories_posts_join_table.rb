class CreateCategoriesPostsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_posts, id: false do |t|
      t.belongs_to :category
      t.belongs_to :post
    end

    add_index :categories_posts, [:category_id, :post_id], unique: true
  end
end
