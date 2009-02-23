module PollHelper
  def add_answer_link(name) 
    link_to_function name do |page| 
      page.insert_html :bottom, :answers_list, :partial => 'answer', :object => Answer.new 
    end 
  end 
end