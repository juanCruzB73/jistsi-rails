# Default Jitsi domain configuration
# You can override this by setting the JITSI_DOMAIN environment variable
Rails.configuration.rails_url = ENV.fetch("RAILS_URL", "https://atmosphere-discussion-bow-connectivity.trycloudflare.com")# cambiar nombre por cluddare
Rails.configuration.jitsi_domain = ENV.fetch("JITSI_DOMAIN", "https://8bbfa8a921cf.ngrok-free.app")# https://192.168.56.1:8443
Rails.configuration.ipv4 = ENV.fetch("IPV4", "8bbfa8a921cf.ngrok-free.app")# 192.168.56.1

Rails.configuration.jitsi_domain_test = ENV.fetch("JITSI_DOMAIN_TEST", "https://192.168.242.136")
Rails.configuration.ipv4_test = ENV.fetch("IPV4_TEST", "192.168.242.136")
