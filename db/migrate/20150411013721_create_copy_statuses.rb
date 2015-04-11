class CreateCopyStatuses < ActiveRecord::Migration
  def change
    create_table :copy_statuses do |t|
      t.references :copy, index: true
      t.string :message
      t.integer :page_number

      t.timestamps null: false
    end
    add_foreign_key :copy_statuses, :copies
  end
end
