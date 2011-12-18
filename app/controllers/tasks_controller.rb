class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all(:conditions => { :done => false }, :order => "due_date")
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    redirect_to :tasks
  end

  def finish
    @task = Task.find(params[:id])
    @task.update_attribute(:done, true)
    redirect_to :back
  end
end
