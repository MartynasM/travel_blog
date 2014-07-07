class Article < ActiveRecord::Base
  belongs_to :travel_point

  scope :ordered, -> { order('serial asc') }
end
