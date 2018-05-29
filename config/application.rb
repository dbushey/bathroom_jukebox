require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BathroomJukebox
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators do |g|
      #g.template_engine nil #to skip views
      g.test_framework  nil #to skip test framework
      g.skip_routes true
      g.assets  false
      g.helper false
    end
  end
end
