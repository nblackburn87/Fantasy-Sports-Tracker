require 'spec_helper'

describe Player do
  it { should validate_presence_of :name }
  it { should belong_to :team }
end
