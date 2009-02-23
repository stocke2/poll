class Poll < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  
  validates_presence_of :title
  
  def new_answer_attributes=(answer_attributes)
    answer_attributes.each do |attributes|
      answers.build(attributes)
    end
  end
  
  def existing_answer_attributes=(answer_attributes)
    answers.reject(&:new_record?).each do |answer|
      attributes = answer_attributes[answer.id.to_s]
      if attributes
        answer.attributes = attributes
      else
        answers.delete(task)
      end
    end
  end
end
