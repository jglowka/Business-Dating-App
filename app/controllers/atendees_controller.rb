class AtendeesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @atendee = @event.atendees.create(params[:atendee])
    @atendee.user_id=current_user.id
    @atendee.save
    redirect_to event_path(@event)
  end



  def destroy
    @event =Event.find(params[:event_id])
    @atendee = @event.atendees.find(params[:id])
    @atendee.destroy
    redirect_to event_path(@event)
  end
end