class Poll < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  
  validates_presence_of :title
  validates_length_of :title, :maximum => 50
  after_update :save_answers
  
  def new_answer_attributes=(answer_attributes)
    answer_attributes.each do |attributes|
      answers.build(attributes)
    end
  end
  
  def existing_answer_attributes=(answer_attributes)
    answers.reject(&:new_record?).each do |answer|
      attributes = answer_attributes[answer.id.to_s]
      logger.debug(attributes)
      if attributes
        answer.attributes = attributes
      else
        answers.delete(answer)
      end
    end
  end
  
  def save_answers
    answers.each do |answer|
      answer.save(false)
    end
  end
    
  
  def vote_report
    data = []
    labels = []
    Answer.find_all_by_poll_id(self.id).each do |v|
      labels << v.title
      data << v.votes
    end
    {:labels => labels, :data => data}  
  end
end
