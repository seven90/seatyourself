class Restaurant < ActiveRecord::Base
  validates :name, :description, :location, :presence => true
  validates :max_occupancy, :numericality => {:only_integer => true}

  CUISINE_TYPES = ["Mexican","French","Japanese", "American","Korean", "Italian"]
  has_many :reservations
end
