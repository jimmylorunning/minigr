class CreateWrites < ActiveRecord::Migration
  def change
    create_table :writes do |t|
      t.references :book, index: true
      t.references :author, index: true
      t.string :role

      t.timestamps null: false
    end
    add_foreign_key :writes, :books
    add_foreign_key :writes, :authors
  end
end
