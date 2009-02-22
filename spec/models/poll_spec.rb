require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "poll" do
  it "should be valid with valid attributes" do
    @poll = Poll.new(:title=>"this is a question")
    @poll.should be_valid
  end
  it "should not be valid without a title" do
    @poll = Poll.new(:title=>nil)
    @poll.should_not be_valid
  end
end