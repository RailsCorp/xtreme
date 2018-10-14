require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Xtreme
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.time_zone = "Tokyo"
    config.i18n.default_locale = :ja

    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework :rspec,
                       fixtures: true, # モデル作成時にフィクスチャの作成を有効化(後述のfactory_botが適用される)
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: false,
                       request_specs: false

      # fixtureの代わりにfactory_botを使うよう設定
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
