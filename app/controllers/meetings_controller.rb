class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]


  # GET /meetings or /meetings.json
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/1 or /meetings/1.json
  def show_test
    @jitsi_host = "#{Rails.configuration.jitsi_domain_test}:8443"
    @jitsi_js = "#{@jitsi_host}/external_api.js"
    @ipv4=Rails.configuration.ipv4_test
  end
  def show
   @jitsi_host = "#{Rails.configuration.jitsi_domain}"
   # @jitsi_js = "#{@jitsi_host}/config.js"
   @jitsi_js = "#{@jitsi_host}/external_api.js"
   @ipv4=Rails.configuration.ipv4
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings or /meetings.json
  def create
    @meeting = current_user.meetings.build(meeting_params)
    @meeting.operator=current_user
    respond_to do |format|
      if @meeting.save
        # Return JSON for API usage (e.g., React Native)
        format.html { redirect_to @meeting, notice: "Meeting was successfully created." }
        format.json { render json: { room_name: @meeting.room_name, jitsi_domain: Rails.configuration.jitsi_domain_test }, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1 or /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: "Meeting was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1 or /meetings/1.json
  def destroy
    @meeting.destroy!

    respond_to do |format|
      format.html { redirect_to meetings_path, notice: "Meeting was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meeting_params
      params.require(:meeting).permit(:status, :started_at, :ended_at, :operator_id)
    end
end
