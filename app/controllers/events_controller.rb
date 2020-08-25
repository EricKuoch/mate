class EventsController < ApplicationController
  def new
    @sport = Sport.all
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      raise
      # redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

private

  def event_params
    params.require(:event).permit(:title, :location, :description, :start_time, :number_of_participants, :sport_id)
  end

end
