require 'spec_helper'

describe Week do
  it { should validate_presence_of :start_date }
  it { should validate_presence_of :end_date }
  it { should have_many :players }
end
