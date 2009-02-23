class AnswersController < ApplicationController
  
  def create
    @answer = Answer.new(params[:answer])
    @answer.save
  end
  
  def new
    @answer = Answer.new
  end
  
  def index
    @answer = Answer.find(:all)
  end
  
  def update_votes
    @answer = Answer.find(params[:id])
    @answer.votes = @anser.votes + 1
    @answer.save
    
  end


end