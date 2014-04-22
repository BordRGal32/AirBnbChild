class Listing < ActiveRecord::Base

  belongs_to :user
  has_many :images
  has_many :events
  has_many :ratings
  has_event_calendar
  validates :user_id, presence: true

  def is_booked(target)
    self.events.each do |event|
      if event.start_at.to_date >= target.start_at.to_date && target.start_at.to_date <= event.end_at.to_date
        return false
      end
    end
    true
  end

  def average_rating
    sum = 0
    self.ratings.each do |rating|
      sum += rating.score
    end
    sum/self.ratings.length
  end
end
