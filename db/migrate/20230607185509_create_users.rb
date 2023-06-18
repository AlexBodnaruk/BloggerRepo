class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.string :firstName
      t.string :lastName
      t.string :fatherName
      t.string :NickName
      t.date :birthday

      t.timestamps
      
    end
  end
end
