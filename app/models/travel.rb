class Travel < ActiveRecord::Base
  has_many :days

  after_create :create_dependencies

  def create_dependencies
    days.create(serial: 1, name: 'Day 1')
  end
end
