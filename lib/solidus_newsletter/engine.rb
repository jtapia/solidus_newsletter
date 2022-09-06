# frozen_string_literal: true

module SolidusNewsletter
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace ::Spree

    engine_name 'solidus_newsletter'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer 'solidus_newsletter.environment', before: :load_config_initializers do |app|
      SolidusNewsletter::Config = SolidusNewsletter::Configuration.new
    end

    # def self.activate
    #   Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
    #     Rails.configuration.cache_classes ? require(c) : load(c)
    #   end
    # end

    # config.to_prepare &method(:activate).to_proc
  end
end
