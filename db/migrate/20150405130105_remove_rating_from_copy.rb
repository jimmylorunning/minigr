class RemoveRatingFromCopy < ActiveRecord::Migration
  def change
    remove_column :copies, :rating
  end
end
