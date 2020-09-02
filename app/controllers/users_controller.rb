class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events
    average_rating
     @created_events = @user.events

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

  def update
  end

  def average_rating
     @sumRatings = []
     @events.each do |event|
      event.attendees.each do |attendee|
        @sumRatings << attendee.rating
        @size = @sumRatings.size
      end
    @average_rating = @sumRatings.sum / @size
    end
  end

  def average_rating_event
    @events.each do |event|
      event.attendees do |attendee|
        @test = @attendee.rating
      end
    end
  end

end
