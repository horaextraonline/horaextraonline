class EventsController < ApplicationController
  def index
  end

  def new
   
  end

  def create
    Event.create params[:event]
    redirect_to root_path, :notice => 'Event successfully created!'
  end

end
