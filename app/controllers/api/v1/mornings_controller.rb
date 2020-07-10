class Api::V1::MorningsController < ApplicationController
     before_action :find_morning, only: [:show, :update, :destroy]

    def index
        mornings = Morning.all
        render json: mornings
    end

    def show
        render json: @morning
    end

     def create
        morning = Morning.create!(morning_params)

       render json: morning
    end

    def update
        @morning.update!(morning_params)

        render json: @morning
    end

    def destroy
       
        @morning.destroy!

        render json: {}
    end

    private
    
    def find_morning
        @morning = Morning.find(params[:id])
    end

    def morning_params
        params.permit(:sleep_time, :alarm_time, :awake_time, :end_time, :complete, :user_id)
    end
end

