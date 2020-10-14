class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @users
    end

    def create
        @new_user = User.create(
            username: params[:username],
            email: params[:email]
        )

        render json: @new_user
    end 

end
