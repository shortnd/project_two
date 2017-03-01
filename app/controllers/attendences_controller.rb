class AttendencesController < ApplicationController
  # index
  def index
      @attendences = Attendence.all
  end

  # def all_attendences
  #   @attendence = Attendence.all
  # end

  # new
  def new
    @attendence = Attendence.new
    @event_season = Event.all.map { |event| event.season }
  end

  # create
  def create
    @attendence = Attendence.new(attendence_params)
    @attendence.event = Event.find_by(season: params[:attendence][:event])
    @attendence.save
    redirect_to attendence_path(@attendence)
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

    redirect_to attendence_path
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
