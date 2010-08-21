class EventsController < ApplicationController
  def index
  end

  def create
    Event.create params[:event]
    redirect_to root_path
  end

end
