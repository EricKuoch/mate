class AttendeesController < ApplicationController
  def create
   @event = Event.find(params[:event_id])
    # recuperer event_id
   @attendee = Attendee.new(event_id: params[:event_id], status:"pending")
   # recuperer user_id
   @attendee.user = current_user
    if @event.attendees.size < @event.number_of_participants
      @attendee.save
      # else NOTICE : sorry its full
      redirect_to event_path(Event.find(params[:event_id]))
    end
  end

  def edit
  end

  def update
    @attendee = Attendee.find(params[:id])
    @attendee.update(attendee_params)
  end

  private

  def attendee_params
    params.require(:attendee).permit(:creator_rating, :creator_review, :status)
  end
end
