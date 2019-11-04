class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.create(task_params)
        redirect_to tasks_path
    end

    def edit
        @task = Task

    private
        def task_params
            params.require(:task).permit(:title)
        end
end
