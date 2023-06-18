class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|

      t.datetime :likeTime
      t.references :post, foreign_key: true
      
    end
  end
end
