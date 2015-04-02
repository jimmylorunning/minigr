class RenameCategoryToShelf < ActiveRecord::Migration
  def change
    rename_table :categories, :shelves
  end
end
