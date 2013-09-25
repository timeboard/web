class CalendarEventsController < ApplicationController
  before_action :set_calendar_event, only: [:show, :edit, :update, :destroy]

  # GET /calendar_events
  # GET /calendar_events.json
  def index
    @calendar_events = CalendarEvent.all
  end

  # GET /calendar_events/1
  # GET /calendar_events/1.json
  def show
  end

  # GET /calendar_events/new
  def new
    @calendar_event = CalendarEvent.new
  end

  # GET /calendar_events/1/edit
  def edit
  end

  # POST /calendar_events
  # POST /calendar_events.json
  def create
    @calendar_event = CalendarEvent.new(calendar_event_params)

    respond_to do |format|
      if @calendar_event.save
        format.html { redirect_to @calendar_event, notice: 'Calendar event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @calendar_event }
      else
        format.html { render action: 'new' }
        format.json { render json: @calendar_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_events/1
  # PATCH/PUT /calendar_events/1.json
  def update
    respond_to do |format|
      if @calendar_event.update(calendar_event_params)
        format.html { redirect_to @calendar_event, notice: 'Calendar event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @calendar_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_events/1
  # DELETE /calendar_events/1.json
  def destroy
    @calendar_event.destroy
    respond_to do |format|
      format.html { redirect_to calendar_events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_event
      @calendar_event = CalendarEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_event_params
      params.require(:calendar_event).permit(:user_id, :type, :item_class, :summary, :description, :url, :start_date, :end_date, :repeat_rule)
    end
end
