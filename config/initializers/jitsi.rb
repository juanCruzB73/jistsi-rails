# Default Jitsi domain configuration
# You can override this by setting the JITSI_DOMAIN environment variable
Rails.configuration.ngrok_url = ENV.fetch('NGROK_URL', 'https://46634d54ca17.ngrok-free.app')
Rails.configuration.jitsi_domain = ENV.fetch('JITSI_DOMAIN', 'https://192.168.242.136')
Rails.configuration.ipv4 = ENV.fetch('IPV4', '192.168.242.136')
