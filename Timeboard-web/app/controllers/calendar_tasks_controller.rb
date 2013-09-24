class CalendarTasksController < ApplicationController
  before_action :set_calendar_task, only: [:show, :edit, :update, :destroy]

  # GET /calendar_tasks
  # GET /calendar_tasks.json
  def index
    @calendar_tasks = CalendarTask.all
  end

  # GET /calendar_tasks/1
  # GET /calendar_tasks/1.json
  def show
  end

  # GET /calendar_tasks/new
  def new
    @calendar_task = CalendarTask.new
  end

  # GET /calendar_tasks/1/edit
  def edit
  end

  # POST /calendar_tasks
  # POST /calendar_tasks.json
  def create
    @calendar_task = CalendarTask.new(calendar_task_params)

    respond_to do |format|
      if @calendar_task.save
        format.html { redirect_to @calendar_task, notice: 'Calendar task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @calendar_task }
      else
        format.html { render action: 'new' }
        format.json { render json: @calendar_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_tasks/1
  # PATCH/PUT /calendar_tasks/1.json
  def update
    respond_to do |format|
      if @calendar_task.update(calendar_task_params)
        format.html { redirect_to @calendar_task, notice: 'Calendar task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @calendar_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_tasks/1
  # DELETE /calendar_tasks/1.json
  def destroy
    @calendar_task.destroy
    respond_to do |format|
      format.html { redirect_to calendar_tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_task
      @calendar_task = CalendarTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_task_params
      params.require(:calendar_task).permit(:user_id, :type, :item_class, :summary, :description, :url, :start_date, :end_date, :repeat_rule)
    end
end
