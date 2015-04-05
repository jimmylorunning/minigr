class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review
      t.references :copy, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :copies
  end
end
