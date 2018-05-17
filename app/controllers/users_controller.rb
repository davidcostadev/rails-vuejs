class UsersController < ApplicationController
    before_action :fetch_user, only: [:show, :tasks]
    def index
        @users = User.all

        respond_to do |format|
            format.html
            format.json { render json: @users }
        end
    end

    private
    
    def fetch_user
        @user = User.find(params[:id])

        respond_to do |format|
            format.html
            format.json { render json: @user }
        end
    end
end
