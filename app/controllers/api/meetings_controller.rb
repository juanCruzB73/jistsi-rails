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

    ip = "https://#{Rails.configuration.ipv4}"

    render json: {
      meeting_id: meeting.id,
      room: room,
      jitsi_server_url: ip,
      config_js: "#{ip}/config.js",
      interface_config_js: "#{ip}/interface_config.js",
      external_api_js: "#{ip}/external_api.js"
    }
  end
end
