class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :listing
      t.integer :number

      t.timestamps
    end
  end
end
