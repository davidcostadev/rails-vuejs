class TasksController < ApplicationController
    before_action :fetch_task, only: [:show, :toggle_completed]
    def index
        @tasks = Task.all
    end

    def show
        
    end

    def toggle_completed
        @task.toggle!(:is_completed)
        flash[:notice] = 'successfully changed!'
        redirect_to @task
    end

    private

    def fetch_task
        @task = Task.find(params[:id])
    end
end
