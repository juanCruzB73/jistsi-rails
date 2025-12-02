# Default Jitsi domain configuration
# You can override this by setting the JITSI_DOMAIN environment variable
Rails.configuration.ngrok_url = ENV.fetch("NGROK_URL", "https://85ee44997807.ngrok-free.app")
Rails.configuration.jitsi_domain = ENV.fetch("JITSI_DOMAIN", "https://192.168.56.1")
Rails.configuration.ipv4 = ENV.fetch("IPV4", "192.168.56.1")
