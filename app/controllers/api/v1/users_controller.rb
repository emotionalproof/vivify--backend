class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:update]

    def index
        users = User.all
        render json: users
    end

    def show
        @user = User.find_by(username: params[:username])
        render json: @user
    end

     def create
        user = User.create!(user_params)

       render json: user
    end

    def update
        @user.update!(user_params)

        render json: user
    end

    # def destroy
    #     movie = Movie.find(params[:id])

    #     movie.destroy!

    #     render json: {}
    # end

    private
    
    def find_user
        @user = User.find_by(username: params[:id])
    end

    def user_params
        params.permit(:first_name, :last_name, :username, :password, :confirm_password, :face_id_img, :profile_img)
    end
end
