class EventCalendarsController < ApplicationController
 
 	 before_action :authenticate_user!

  def index
  	@event = Event.all
  end

  def create
  	@event = Event.new
  	@event.title = params[:title]
  	@event.save
  	redirect_to calendars_path(@event.id)
  end

end
