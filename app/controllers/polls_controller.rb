class PollsController < ApplicationController  
  
  def new
    @poll = Poll.new
    
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
    @poll = Poll.find(params[:id])
    respond_to do |format|
      if @poll.update_attributes(params[:poll])
        format.html{redirect_to(@poll)}
      else
        format.html {render :action=>"edit"}
      end
    end
  end

end