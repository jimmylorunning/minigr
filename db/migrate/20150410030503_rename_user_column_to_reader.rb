class RenameUserColumnToReader < ActiveRecord::Migration
  def change
    rename_column :comments, :user_id, :reader_id
  end
end
