class Picture < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  scope :ordered, -> { order('serial asc') }
end
