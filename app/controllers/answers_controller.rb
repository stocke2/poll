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
  


end