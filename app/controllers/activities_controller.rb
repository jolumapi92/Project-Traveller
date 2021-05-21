class ActivitiesController < ApplicationController
    def show
        @activity = Activity.find(params[:id])
    end

    def new
        @activity = Activity.new
        @location = Location.find(params[:location_id])
    end

    def create
        @location = Location.find(params[:location_id])
        @activity = Activity.new(activity_params)
        @activity.location = @location
        if
            @activity.save
            redirect_to locations_path
        else
            render :new
        end
    end
    
    private

    def activity_params
        params.require(:activity).permit(:name, :category, :place, :points, :location_id, :description)
    end

end
