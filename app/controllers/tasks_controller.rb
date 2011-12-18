class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all(:conditions => { :done => false }, :order => "due_date")
  end
end
