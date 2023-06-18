class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|

      t.text :commentText
      t.datetime :commentTime
      t.references :post, foreign_key: true
      
    end
  end
end
