class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :reader, index: true
      t.integer :friend_id, index: true
      t.integer :accepted, limit: 1

      t.timestamps null: false
    end
    add_foreign_key :friendships, :readers
    add_foreign_key :friendships, :readers, column: :friend_id, primary_key: "id"
  end
end
