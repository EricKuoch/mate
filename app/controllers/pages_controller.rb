class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def home
    @events = Event.all
    # the `geocoded` scope filters only events with coordinates (latitude & longitude)
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url("#{event.sport.name.downcase}.png")

      }
    end
  end

  def dashboard
    @user = current_user
    @created_events = current_user.events

    # evenements que l'ont participent
    @futur_events_join = []
    @past_events_join = []

    # evenement que l'ont créer
    @past_events_create = []
    @futur_events_create = []

    # Stock les events rejoins futur et passé
    @user.attendees.reject{|attendee|attendee.event.user == @user}.each do |attendee|
      if attendee.event.start_time > Date.today
        @futur_events_join << attendee.event
      else
        @past_events_join << attendee.event
      end
    end
    #STOCK les events creer futur et passé
    @created_events.each do |event|
      if event.start_time > Date.today
        @futur_events_create << event
      else
        @past_events_create << event
      end
    end
  end
end
