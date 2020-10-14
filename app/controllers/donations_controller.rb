class DonationsController < ApplicationController
    def index
        @donations = Donation.all
        render json: @donations, include: [:user, :tree]
    end

    def show
        @donation = Donation.find(params[:id])
        render json: @donation, include: [:user, :tree]
    end 

    def create
        @new_user = User.create(
            name: params[:user],
            tree: params[:tree]
        )
    end

end
