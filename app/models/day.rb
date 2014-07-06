class Day < ActiveRecord::Base
  belongs_to :travel

  scope :ordered, -> { order('serial asc') }
end
