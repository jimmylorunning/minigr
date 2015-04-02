class RenameShelfIdToTagIdInTaggings < ActiveRecord::Migration
  def change
    rename_column :taggings, :shelf_id, :tag_id
  end
end
