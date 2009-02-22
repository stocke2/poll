class AnswersController < ApplicationController
  
  def create
    @poll = Poll.find(params[:id])
    @answer = @poll.answers.build(params[:answer])
  end

end