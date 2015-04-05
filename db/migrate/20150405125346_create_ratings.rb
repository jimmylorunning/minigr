class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.float :score
      t.references :copy, index: true

      t.timestamps null: false
    end
    add_foreign_key :ratings, :copies
  end
end
