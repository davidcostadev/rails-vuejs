module Api
    class TasksController < ApplicationController
        def index
            tasks = Task.all
            render json: tasks, status: 200 
        end

        def show
            task = Task.find(params[:id])
            render json: task, status: 200
        end
    end
end