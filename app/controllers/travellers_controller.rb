class TravellersController < ApplicationController
    def update
        @traveller = Traveller.find(params[:id])
        @traveller.update(traveller_params)
    
        render :show
    end

    private

    def traveller_params
        params.require(:traveller).permit(events_attributes: [:start, :end, :hotel, :city, :transport, :occupants, :id, :agent_id, Unpermitted parameter: activity_ids:[])
    end
end
