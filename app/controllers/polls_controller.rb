class PollsController < ApplicationController  
  
  def new
    @poll = Poll.new
    2.times { @poll.answers.build }
    
  end
  
  def create
    @poll = Poll.new(params[:poll])
    respond_to do |format|
      if @poll.save
          
        flash[:notice]= "Poll was created successfully"
        format.html {redirect_to(@poll)}
      else
        format.html {render :action => "new"}
      end
    end
  end
  
  def index
    @polls = Poll.find(:all)
    respond_to do |format|
      format.html
    end
    
  end
  
  def show
    @poll = Poll.find(params[:id])
    @report = Poll.find(params[:id]).vote_report
    respond_to do |format|
      format.html
    end
  end
  
  def edit
    @poll = Poll.find(params[:id])
    respond_to do |format|
      format.html
    end
  end
  
  def update
    params[:poll][:existing_answer_attributes] || {}
    
    @poll = Poll.find(params[:id])
    respond_to do |format|
      if @poll.update_attributes(params[:poll])
        flash[:notice] = "Poll updated successfully"
        format.html{redirect_to(@poll)}
      else
        format.html {render :action=>"edit"}
      end
    end
  end
  
  def destroy
    @poll = Poll.find(params[:id])
    @poll.destroy
    
    respond_to do |format|
      format.html {redirect_to(polls_url)}
    end
  end
  
  def update_votes
    @answer = Answer.find(params[:id])
    @answer.votes = @answer.votes + 1
    @answer.save
    
  end
  
  

end