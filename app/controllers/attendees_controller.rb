class AttendeesController < ApplicationController
  # index
  def index
      @attendees = Attendee.all
  end

  # def all_attendees
  #   @attendee = Attendee.all
  # end

  # new
  def new
    @attendee = Attendee.new
    @event_season = Event.all.map { |event| event.season }
  end

  # create
  def create
    @attendee = Attendee.new(attendee_params)
    @attendee.event = Event.find_by(season: params[:attendee][:event])
    @attendee.save
    redirect_to attendee_path(@attendee)
  end

  #show
  def show
    @attendee = Attendee.find(params[:id])
  end

  # edit
  def edit
    @attendee = Attendee.find(params[:id])
  end

  # update
  def update
    @attendee = Attendee.find(params[:id])
    @attendee.update(attendee_params)

    redirect_to attendee_path
  end

  # destroy
  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy
    redirect_to attendees_path
  end

  private
  def attendee_params
    params.require(:attendee).permit(:full_name, :email, :password, :chapter, :address, :phoneNumber)
  end
end
