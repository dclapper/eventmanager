class Contest < ActiveRecord::Base
  attr_accessible :end_date, :present_to_win, :prize, :start_date, :meeting, :sponsor, :meeting_id, :sponsor_id
  
  validates :end_date, :presence => true
  validates :present_to_win, :presence => true
  validates :prize, :presence => true
  validates :start_date, :presence => true
  validates :meeting, :presence => true
  validates :sponsor, :presence => true
  
  belongs_to :meeting
  belongs_to :sponsor
  
end
