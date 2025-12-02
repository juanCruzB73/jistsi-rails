class Api::MeetingsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  SYSTEM_USER_ID = 1

  def create
    room = SecureRandom.hex(6)

    meeting = Meeting.create!(
      room_name: room,
      user_id: SYSTEM_USER_ID,
      operator_id: SYSTEM_USER_ID,
      status: "pending"
    )

    ip = Rails.configuration.ipv4
    jitsi_base = "https://#{ip}:8443"

    render json: {
      meeting_id: meeting.id,
      room: room,
      jitsi_server_url: jitsi_base,
      config_js: "#{jitsi_base}/config.js",
      interface_config_js: "#{jitsi_base}/interface_config.js",
      external_api_js: "#{jitsi_base}/external_api.js"
    }
  end
end
