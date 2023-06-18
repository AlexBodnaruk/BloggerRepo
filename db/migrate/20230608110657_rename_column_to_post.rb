class RenameColumnToPost < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :invisible, :hidden
  end
end
