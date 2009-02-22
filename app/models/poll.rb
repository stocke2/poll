class Poll < ActiveRecord::Base
  has_many :answers
  
  validates_presence_of :title
end
