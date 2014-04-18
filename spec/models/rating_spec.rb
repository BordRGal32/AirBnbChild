require 'spec_helper'

describe Rating do
  it { should validate_presence_of :number }
  it { should ensure_inclusion_of(:number).in_range(0..5) }
  it { should belong_to :listing }
end
