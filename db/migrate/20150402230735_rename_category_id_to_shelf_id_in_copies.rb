class RenameCategoryIdToShelfIdInCopies < ActiveRecord::Migration
  def change
    rename_column :copies, :category_id, :shelf_id
  end
end
