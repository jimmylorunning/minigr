class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :format
      t.string :isbn
      t.string :publisher

      t.timestamps null: false
    end
  end
end
