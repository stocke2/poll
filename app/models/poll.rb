class Poll < ActiveRecord::Base
  has_many :answers
end
