class EventsController < ApplicationController
    def index
        @events = Event.where("traveller_id = ?", params[:traveller_id])
    end

    def new
        @event = Event.new
        @traveller = Traveller.find(params[:traveller_id])
    end

    def show
        @event = Event.find(params[:id])
    end

    def create
        @traveller = Traveller.find(params[:traveller_id])
        @event = Event.new(event_params)
        @event.traveller = @traveller
        if 
            @event.save
            redirect_to traveller_events_path(current_traveller)
        else
            render :new
        end 
    end

    def update
        @event = Event.find(params[:id])
        @event.update(event_params)

        render :show
    end

    private

    def event_params
        params.require(:event).permit(:start, :end, :hotel, :city, :transport, :occupants, :agent_id, :location_id, activity_ids:[], activities_attributes: [:id, :name, :place])
    end
end
