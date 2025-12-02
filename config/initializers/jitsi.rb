# Default Jitsi domain configuration
# You can override this by setting the JITSI_DOMAIN environment variable
Rails.configuration.ngrok_url = ENV.fetch("NGROK_URL", "https://atmosphere-discussion-bow-connectivity.trycloudflare.com")# cambiar nombre por cluddare
Rails.configuration.jitsi_domain = ENV.fetch("JITSI_DOMAIN", "https://98e81b30ee93.ngrok-free.app")# https://192.168.56.1
Rails.configuration.ipv4 = ENV.fetch("IPV4", "https://98e81b30ee93.ngrok-free.app")# https://192.168.56.1

Rails.configuration.jitsi_domain_test = ENV.fetch("JITSI_DOMAIN_TEST", "https://192.168.100.54")
Rails.configuration.ipv4_test = ENV.fetch("IPV4_TEST", "192.168.100.54")
