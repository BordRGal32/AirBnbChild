require 'spec_helper'

describe User do
 it {should validate_presence_of :username }
 it {should have_many :listings }

  it "sends an email when the user is created" do
    user = FactoryGirl.create(:user)
    ActionMailer::Base.deliveries.last.to.should eq [user.email]
  end
end
