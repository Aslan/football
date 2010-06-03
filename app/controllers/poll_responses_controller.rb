class PollResponsesController < ApplicationController
  def index
    @poll_responses = PollResponse.all
  end
  
  def show
    @poll_response = PollResponse.find(params[:id])
  end
  
  def new
    @poll_response = PollResponse.new
  end
  
  def create
    @poll_response = PollResponse.new(params[:poll_response])
    if @poll_response.save
      flash[:notice] = "Successfully created poll response."
      redirect_to @poll_response
    else
      render :action => 'new'
    end
  end
  
  def edit
    @poll_response = PollResponse.find(params[:id])
  end
  
  def update
    @poll_response = PollResponse.find(params[:id])
    if @poll_response.update_attributes(params[:poll_response])
      flash[:notice] = "Successfully updated poll response."
      redirect_to @poll_response
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @poll_response = PollResponse.find(params[:id])
    @poll_response.destroy
    flash[:notice] = "Successfully destroyed poll response."
    redirect_to poll_responses_url
  end
end
