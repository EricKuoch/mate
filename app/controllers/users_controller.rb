class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events
    @sumRatings = []
    @rating = @events.each do |event|
      event.attendees.each do |attendee|
      @sumRatings << attendee.rating
      @size = @sumRatings.size
      end
    @average_rating = @sumRatings.sum / @size
    end
  end

  def update
  end
end
