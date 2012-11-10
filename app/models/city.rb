class City < ActiveRecord::Base
  attr_accessible :name 
  has_many :locations
  accepts_nested_attributes_for :locations


end
