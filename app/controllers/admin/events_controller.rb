class Admin::EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id], :include => [:poll, :comments] )
    @comment_on = @event
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    @event.poll = Poll.event_poll(:user_id => current_user.id, :close_poll => params[:event ][:close_poll], :time => params[:event][:time])
    if @event.save
      flash[:notice] = "Successfully created event."
      redirect_to admin_event_path(@event)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = "Successfully updated event."
      redirect_to [:admin,@event]
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Successfully destroyed event."
    redirect_to admin_events_url
  end

end
