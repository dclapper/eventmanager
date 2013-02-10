class Exhibitor < ActiveRecord::Base
  attr_accessible :description, :name, :exhibitor_category, :sponsor, :exhibitor_category_id, :meetings
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitor_category, :presence => true
  
  belongs_to :exhibitor_category
  belongs_to :sponsor
  has_many :meetings, :through => :sponsor
  
end
