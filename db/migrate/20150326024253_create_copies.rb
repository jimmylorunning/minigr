class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.string :notes
      t.float :rating

      t.timestamps null: false
    end
  end
end
