class Rating < ActiveRecord::Base
  belongs_to :listing
  validates :score, presence: true, inclusion: {in: 0..5}
end
