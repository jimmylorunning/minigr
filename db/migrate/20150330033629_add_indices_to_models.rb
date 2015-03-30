class AddIndicesToModels < ActiveRecord::Migration
  def change
    add_index "editions", ["book_id"]
    add_index "copies", ["edition_id"]
  end
end
