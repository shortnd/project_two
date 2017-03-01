class AttendencesController < ApplicationController
  # index
  def index
      @event = Event.find(params[:event_id])
      @attendences = @event.attendences
  end

  def all_attendences
    @attendence = Attendence.all
  end

  # new
  def new
    @event = Event.find(params[:event_id])
    @attendence = @event.attendences.build
  end

  # create
  def create
    @event = Event.find(params[:event_id])
    @attendence = @event.attendences.create!(attendence_params)

    redirect_to event_path(@event)
  end

  #show
  def show
    @attendence = Attendence.find(params[:id])
  end

  # edit
  def edit
    @attendence = Attendence.find(params[:id])
  end

  # update
  def update
    @attendence = Attendence.find(params[:id])
    @attendence.update(attendence_params)

    redirect_to event_attendence_path(@attendence.event, @attendence)
  end

  # destroy
  def destroy
    @attendence = Attendence.find(params[:id])
    @attendence.destroy

    redirect_to attendences_path
  end

  private
  def attendence_params
    params.require(:attendence).permit(:fullName, :email, :password, :chapter, :address, :phoneNumber)
  end
end
