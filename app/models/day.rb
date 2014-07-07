class Day < ActiveRecord::Base
  belongs_to :travel
  has_many :travel_points

  scope :ordered, -> { order('serial asc') }
end
