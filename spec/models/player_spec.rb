require 'spec_helper'

describe Player do
  it { should validate_presence_of :name }
  it { should validate_presence_of :position }
  it { should validate_presence_of :team_id }
  it { should belong_to :team }
end
