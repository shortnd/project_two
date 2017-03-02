class AttendeesController < ApplicationController
  before_action :authenticate_user!

  # index
  def index
      @attendees = Attendee.all
  end

  #show
  def show
    @attendee = Attendee.find(params[:id])
  end

  # edit
  def edit
    @attendee = Attendee.find(params[:id])
    if @attendee.user == current_user
      #empty it works
    else
      redirect_to attendee_path
      flash[:alert] = "Only the Attendee can Edit"
    end
  end

  # new
  def new
    @attendee = Attendee.new
    @event_season = Event.all.map { |event| event.season }
  end

  # create
  def create
    @attendee = Attendee.new(attendee_params.merge(user: current_user))
    @attendee.event = Event.find_by(season: params[:attendee][:event])
    @attendee.save
    redirect_to attendee_path(@attendee)
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
    if @attendee.user == current_user
    @attendee.destroy
  else
    flash[:alert] = "Only the Attendee can delete"
  end
    redirect_to attendees_path
  end

  private
  def attendee_params
    params.require(:attendee).permit(:full_name, :email, :password, :chapter, :address, :phoneNumber)
  end
end
