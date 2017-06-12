class EventCalendarsController < ApplicationController
 
 	 before_action :authenticate_user!

  def index
  	    #表示用データ成形
    @events = [];
    Event.all.each do |data|
      @events += [
        'title' => data['title'],
        'start' => data['start'],
        'end'   => data['end'],
        'color' => 'red'
        ]

    gon.events = @events
    end

  end
def create
    @event = Event.new
    @event.title = params[:title]
    @event.user_id = current_user.id
    @event.save
    redirect_to calendars_path(@event.id)
  end


end
