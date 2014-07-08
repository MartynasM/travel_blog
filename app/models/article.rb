class Article < ActiveRecord::Base
  belongs_to :travel_point
  has_many :pictures, as: :owner

  scope :ordered, -> { order('serial asc') }
end
