require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Xtreme
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.paths.add File.join('app', 'apis'), glob: File.join('**', '*.rb')
    config.autoload_paths += Dir[Rails.root.join('app', 'apis', '*')]
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja

    # Grape+JBuilderを使うための設定
    config.middleware.use(Rack::Config) do |env|
      env['api.tilt.root'] = Rails.root.join 'app', 'views', 'api'
    end

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,         # モデル作成時にフィクスチャの作成を有効化(後述のfactory_botが適用される)
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false

      # fixtureの代わりにfactory_botを使うよう設定
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
    end
  end
end
