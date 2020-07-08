class Api::V1::MorningsController < ApplicationController
     before_action :find_morning, only: [:update]

    def index
        mornings = Morning.all
        render json: mornings
    end

    def show
        @morning = Morning.find_by(id: params[:id])
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

    # def destroy
    #     movie = Movie.find(params[:id])

    #     movie.destroy!

    #     render json: {}
    # end

    private
    
    def find_morning
        @morning = Morning.find_by(id: params[:id])
    end

    def morning_params
        params.permit(:sleep_time, :alarm_time, :awake_time, :end_time, :user_id, :game_id)
    end
end

