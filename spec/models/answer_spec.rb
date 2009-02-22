require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "answer" do
  it "should be valid with valid attributes" do
    @answer = Answer.new(:title=>"this is a question")
    @answer.should be_valid
  end
  it "should not be valid without a title" do
    @answer = Answer.new(:title=>nil)
    @answer.should_not be_valid
  end
end