require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Horaextraonline
  class Application < Rails::Application
    config.action_view.javascript_expansions[:defaults] = %w()
    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec, :fixture => true, :views => false
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
    
    config.encoding = "utf-8"

    config.filter_parameters += [:password]
  end
end
