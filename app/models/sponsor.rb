class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :url, :exhibitor, :meetings, :name
  
  validates :logo, :presence => true
  validates :url, :presence => true
  validates :exhibitor, :presence => true
  
  has_one :exhibitor
  has_and_belongs_to_many :meetings
  has_many :contests
  
end
