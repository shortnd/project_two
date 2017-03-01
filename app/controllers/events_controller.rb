class EventsController < ApplicationController
  # index
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  # create
  def create
    @event = Event.create(event_params)
    @event.save
    redirect_to event_path(@event)
  end

  #show
  def show
    @event = Event.find(params[:id])
  end

  # edit
  def edit
    @event = Event.find(params[:id])
  end


  # update
  def update
    @event = Event.find(params[:id])
    @event.update(event_params)

    redirect_to event_path(@event)
  end

  # destroy
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :photo_url, :nationality)
  end
end
