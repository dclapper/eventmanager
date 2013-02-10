class ExhibitorCategory < ActiveRecord::Base
  attr_accessible :name, :exhibitors
  
  validates :name, :presence => true
  
  has_many :exhibitors
  
end
