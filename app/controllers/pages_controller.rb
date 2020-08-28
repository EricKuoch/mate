class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def home
    @events = Event.all
    # the `geocoded` scope filters only events with coordinates (latitude & longitude)
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
      }
    end
  end

  def dashboard
    @user = current_user
    @created_events = current_user.events
    @futur_events = []
    @past_events = []

    @user.attendees.each do |attendee|
      if attendee.event.start_time > Date.today
        @futur_events << attendee.event
      else
        @past_events << attendee.event
      end
    end
  end
end
