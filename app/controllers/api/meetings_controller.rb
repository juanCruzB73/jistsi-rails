class Api::MeetingsController < ApplicationController
  skip_before_action :authenticate_user!

  # disable CSRF token check
  skip_before_action :verify_authenticity_token
  def create
    room = SecureRandom.hex(6)
    render json: { ngrok_url: Rails.configuration.ngrok_url, jitsi_domain: Rails.configuration.jitsi_domain }
  end
end
