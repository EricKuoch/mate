class AttendeesController < ApplicationController
  def create
    # recuperer event_id
   @attendee = Attendee.new(event_id: params[:event_id])
   # recuperer user_id
   @attendee.user = current_user
   @attendee.save
   redirect_to event_path(Event.find(params[:event_id]))
  end

  def edit
  end

  def update
  end
end
