require 'spec_helper'
require 'Date'

describe Listing do
  it { should belong_to :user }
  it { should validate_presence_of :user_id }
  it { should have_many :images }

  describe '#is_booked' do
    it 'should return fasle if the listing is already booked for that date' do
      listing = Listing.create({:title => "user", :user_id => 1})
      event = Event.create({:start_at => Date.today, :end_at => Date.today.next_day, :name => "name"})
      event1 = Event.create({:start_at => Date.today, :end_at => Date.today.next_day, :name => "name"})
      listing.events << event
      listing.is_booked(event1).should eq false

    end
  end
end
