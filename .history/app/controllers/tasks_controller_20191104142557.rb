class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @tasks = Task.new
    end

    def create
        @tasks = Task.create(task)
end
