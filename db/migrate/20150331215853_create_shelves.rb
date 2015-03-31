class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :name
      t.references :reader, index: true

      t.timestamps null: false
    end
    add_foreign_key :shelves, :readers
  end
end
