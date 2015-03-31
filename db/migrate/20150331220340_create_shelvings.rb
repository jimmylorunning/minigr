class CreateShelvings < ActiveRecord::Migration
  def change
    create_table :shelvings do |t|
      t.references :shelf, index: true
      t.references :copy, index: true

      t.timestamps null: false
    end
    add_foreign_key :shelvings, :shelves
    add_foreign_key :shelvings, :copies
  end
end
