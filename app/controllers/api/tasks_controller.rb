module Api
    class TasksController < ApplicationController
        def index
            tasks = Task.all
            # render json: tasks, status: 200 
            respond_to do |format|
                format.json { render json: tasks, status: 200}
                format.xml { render xml: tasks, status: 200 }
            end
        end

        def show
            task = Task.find(params[:id])
            render json: task, status: 200
        end
    end
end