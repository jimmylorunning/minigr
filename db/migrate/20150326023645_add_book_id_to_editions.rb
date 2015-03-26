class AddBookIdToEditions < ActiveRecord::Migration
  def change
    add_column :editions, :book_id, :integer
  end
end
