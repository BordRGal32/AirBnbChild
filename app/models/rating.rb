class Rating < ActiveRecord::Base
  belongs_to :listing
  validates :number, presence: true, inclusion: {in: 0..5}
end
