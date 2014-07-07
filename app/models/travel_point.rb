class TravelPoint < ActiveRecord::Base
  belongs_to :day
  has_many   :articles

  scope :ordered, -> { order('serial asc') }
end
