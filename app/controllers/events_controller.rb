class EventsController < ApplicationController

    before_action :set_event, only: [ :show ]

  def show
    @event_image = @event.sport.photo
  end

  def index
    sql_query = "location ILIKE :query_location AND sports.name ILIKE :query_category"
    @filtered_events = Event.joins(:sport).where(sql_query, query_location: "%#{params[:query_location]}%", query_category: "%#{params[:query_category]}%")
  end

  def new
    @sport = Sport.all
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

private

  def set_event
    @event = Event.find(params[:id])
    #authorize @event  # For Pundit
  end

  def event_params
    params.require(:event).permit(:title, :location, :description, :start_time, :number_of_participants, :sport_id)
  end

end
