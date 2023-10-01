class MoviegoersController < ApplicationController
    skip_before_filter :set_current_user, only: [:login]
    def show
        @user = Moviegoer.find(params[:id])
    end

    def reviews
        @user = Moviegoer.find(params[:id])
        @reviews = @user.reviews.joins(:movie)
    end

    def login

    end
end
