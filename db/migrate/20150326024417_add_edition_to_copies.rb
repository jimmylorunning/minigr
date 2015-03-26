class AddEditionToCopies < ActiveRecord::Migration
  def change
    add_column :copies, :edition_id, :integer
  end
end
