class EventsController < ApplicationController



  def index
    @events = Event.all
  end


  def show
    @event = Event.find(params[:id])


    @users = User.all
    @userIsOnList = Atendee.where(user_id: current_user.id).where(event_id: @event).exists?
    @attendee =  Atendee.where(user_id: current_user.id).where(event_id: @event).first


  end

  def new
    @event =current_user.events.build
  end

  def edit # edit not implemented
    @event = Event.find(params[:id])
  end


  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
    redirect_to @event
    else
      render 'new'
    end
  end

  private
  def event_params
    params.require(:event).permit(:subject, :location, :start_date, :start_time, :end_time, :end_date, :description, :max_users)
  end


end
