class EventCalendarsController < ApplicationController
  def index
  	@event = Event.all
  end


end
