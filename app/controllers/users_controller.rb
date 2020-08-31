class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events
    average_rating

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
