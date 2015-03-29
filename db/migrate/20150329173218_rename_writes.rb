class RenameWrites < ActiveRecord::Migration
  def change
    rename_table :writes, :credits
  end
end
