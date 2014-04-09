class Player < ActiveRecord::Base
  validates :name, presence: true
  validates :position, presence: true
  validates :team_id, presence: true
  belongs_to :team
end
