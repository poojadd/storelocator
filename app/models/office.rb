class Office < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  validates :name, :presence =>  true
  validates :latitude, :presence =>  true
  validates :longitude, :presence => true
  validates_numericality_of :latitude
  validates_numericality_of :longitude
end
