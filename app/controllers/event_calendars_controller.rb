class EventCalendarsController < ApplicationController
 
 	 before_action :authenticate_user!

  def index
  	gon.event = Event.all[3].title
  end


  def create
  	@event = Event.new
  	@event.title = params[:title]
  	@event.user_id = current_user.id
    @event.save
  	redirect_to calendars_path(@event.id)
  end

end
