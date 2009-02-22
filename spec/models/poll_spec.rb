require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'factory_girl'

Factory.define :answer do |f|
  f.title 'an answer'
end
Factory.define :poll do |f|
  f.title "this is a question"
  # f.answers {|a| a.association(:answer)}
  f.association :answers, :factory => :answer
end

describe "poll" do
  it "should be valid with valid attributes" do
    @poll = Poll.new(:title=>"this is a question")
    @poll.should be_valid
  end
  it "should not be valid without a title" do
    @poll = Poll.new(:title=>nil)
    @poll.should_not be_valid
  end
  it "should delete associated answers when a poll is deleted " do
    @poll = Factory(:poll)
    @poll.save
  end
end