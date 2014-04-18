class Listing < ActiveRecord::Base

  belongs_to :user
  has_many :images
  has_many :events
  has_event_calendar
  validates :user_id, presence: true

  def is_booked(target)
    can_book = ""
    self.events.each do |event|
      if  event.start_at.to_date >= target.start_at.to_date && target.start_at.to_date <= event.end_at.to_date
        can_book = false
      else
        can_book = true
      end
    end
    can_book
  end
end
