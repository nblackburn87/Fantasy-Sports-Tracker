class Week < ActiveRecord::Base
  validates :start_date, presence: true
  validates :end_date, presence: :true
  has_many :players
end
