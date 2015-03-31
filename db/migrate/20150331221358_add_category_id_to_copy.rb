class AddCategoryIdToCopy < ActiveRecord::Migration
  def change
    add_column :copies, :category_id, :integer
    add_index "copies", ["category_id"]
  end
end
