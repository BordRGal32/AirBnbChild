class CreateRating < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :listing
      t.integer :score
      t.timestamp
    end
  end
end
