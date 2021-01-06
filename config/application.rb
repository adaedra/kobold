require 'bundler/setup'
require 'rails'
require 'active_record/railtie'
require 'action_controller/railtie'

Bundler.require(*Rails.groups)

module Kobold
  class Application < Rails::Application
    config.load_defaults 6.0

    config.generators do |generate|
      generate.helper false
      generate.assets false
    end
  end
end
