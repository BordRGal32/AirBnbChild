class AddTotalRatingToListings < ActiveRecord::Migration
  def change
    remove_column :listings, :rating
    add_column :listings, :total_rating, :decimal
  end
end
