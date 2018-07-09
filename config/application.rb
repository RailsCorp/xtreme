require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Xtreme
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
+    config.generators do |g|
+      g.test_framework :rspec,
+        fixtures: true,         # モデル作成時にフィクスチャの作成を有効化(後述のfactory_girlが適用される)
+        view_specs: false,      # 以下、必要に応じて任意にトグルする
+        helper_specs: false,
+        routing_specs: false,
+        controller_specs: false,
+        request_specs: false
+
+      # fixtureの代わりにfactory_girlを使うよう設定
+      g.fixture_replacement :factory_girl, dir: 'spec/factories'
+    end
  end
end
