class DropRatingModel < ActiveRecord::Migration
  def change
    drop_table :ratings
    remove_column :listings, :total_rating, :integer

  end
end
