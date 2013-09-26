class UserConnectionsController < ApplicationController
  before_action :set_user_connection, only: [:show, :edit, :update, :destroy]

  # GET /user_connections
  # GET /user_connections.json
  def index
    @user_connections = UserConnection.all
  end

  # GET /user_connections/1
  # GET /user_connections/1.json
  def show
  end

  # GET /user_connections/new
  def new
    @user_connection = UserConnection.new
  end

  # GET /user_connections/1/edit
  def edit
  end

  # POST /user_connections
  # POST /user_connections.json
  def create
    @user_connection = UserConnection.new(user_connection_params)

    respond_to do |format|
      if @user_connection.save
        format.html { redirect_to @user_connection, notice: 'User connection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_connection }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_connections/1
  # PATCH/PUT /user_connections/1.json
  def update
    respond_to do |format|
      if @user_connection.update(user_connection_params)
        format.html { redirect_to @user_connection, notice: 'User connection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_connections/1
  # DELETE /user_connections/1.json
  def destroy
    @user_connection.destroy
    respond_to do |format|
      format.html { redirect_to user_connections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_connection
      @user_connection = UserConnection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_connection_params
      params.require(:user_connection).permit(:user_id, :friend_user_id)
    end
end
