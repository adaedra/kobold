require 'bundler/setup'
require 'rails'
require 'action_controller/railtie'

Bundler.require(*Rails.groups)

module Kobold
  class Application < Rails::Application
    config.load_defaults 6.0
  end
end
