module Api 
    class UsersController < ApplicationController
        def index
            users = User.all
            render json: users, status: 200
        end

        def show
            user = fetch_user
            render json: user, status: 200
        end

        def tasks
            user = fetch_user
            render json: user.tasks, status: 200
        end

        private
        
        def fetch_user
            user = User.find(params[:id])
        end
    end
end