class EventsController < ApplicationController
  # index
  def index
    @events = Event.all
  end
  #show
  def show
    @event = Event.find(params[:id])
  end
end
