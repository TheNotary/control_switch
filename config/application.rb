require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'faye'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module ControlSwitch
  class Application < Rails::Application

    config.middleware.use Faye::RackAdapter, :mount => '/faye', :timeout => 25

  end
end
