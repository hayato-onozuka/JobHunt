class EventCalendarsController < ApplicationController

 	 before_action :authenticate_user!

  def new
    @events = [];
    
    Event.all.each do |data|
      @events += [
        'title' => data['title'],
        'start' => data['start'],
        'end'   => data['end'],
        'detail'=> "aaaaaaaaaa",
        'color' => '#28b086'
        ]
    
    gon.events = @events
  end
end  

  def create
  	@event = Event.new
  	@event.title = params[:title]
    @event.start = params[:start]
    @event.end = params[:end]
  	@event.user_id = current_user.id
    if @event.save
  	redirect_to calendars_path(@event.id), notice: "保存されました"
  else
    redirect_to calendars_path(@event.id), notice: "入力した内容に誤りがあります"
  end
end


end
