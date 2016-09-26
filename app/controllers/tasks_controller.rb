class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
	puts @task.inspect
    respond_to do |format|
      if @task.save
        format.html { redirect_to '/', notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :wg_id, :user_id)
    end
end
