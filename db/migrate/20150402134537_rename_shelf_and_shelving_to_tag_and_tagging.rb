class RenameShelfAndShelvingToTagAndTagging < ActiveRecord::Migration
  def change
    rename_table :shelves, :tags
    rename_table :shelvings, :taggings
  end
end
