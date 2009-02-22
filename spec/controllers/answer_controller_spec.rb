require File.dirname(__FILE__) + '/../spec_helper'
require 'factory_girl'

describe AnswersController do
  
  Factory.define :poll do |a|
    a.title "this is a question"
  end
  
  describe "responding to POST create" do
    before do
      @poll = Factory(:poll)
    end
    it "should return a new answer object as a child of poll" do
      post :create, :id=>@poll.id, :answer=> {:title=>"an answer"}
      assigns[:answer].poll_id.should == @poll.id
    end
  end
end
