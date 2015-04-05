class CreateLike < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :reader, index: true
      t.references :likeable, polymorphic: true, index: true
    end
    add_foreign_key :likes, :readers
    add_foreign_key :likes, :likeables
  end
end
