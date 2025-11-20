class Api::MeetingsController < ApplicationController
  skip_before_action :authenticate_user!

  # disable CSRF token check
  skip_before_action :verify_authenticity_token
  def create
    room = SecureRandom.hex(6)
    render json: { room_name: room, jitsi_domain: "https://192.168.239.128:8443" }
  end
end
