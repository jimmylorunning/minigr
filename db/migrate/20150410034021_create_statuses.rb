class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :message
      t.references :reader, index: true

      t.timestamps null: false
    end
    add_foreign_key :statuses, :readers
  end
end
