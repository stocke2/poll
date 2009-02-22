class Poll < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  
  validates_presence_of :title
  
  def new_answer_attributes=(answer_attributes)
    answer_attributes.each do |attributes|
      answers.build(attributes)
    end
  end
end
