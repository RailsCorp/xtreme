source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "activeadmin", github: "gregbell/active_admin"
gem "bcrypt", "~> 3.1.7"
gem "brakeman", require: false
gem "bullet", group: :development
gem "cancancan", "~> 2.0"
gem "capistrano-rails", group: :development # Use Capistrano for deployment
gem "carrierwave"
gem "coffee-rails", "~> 4.2"
gem "devise"
gem "dotenv-rails"
gem "draper"
gem "enum_help"
gem "enumerize"
gem "fog-aws"
gem "gon"
gem "hashie"
gem "i18n_generators"
gem "jbuilder", "~> 2.5"
gem "kaminari"
gem "mysql2", "0.5.2"
gem "nginx"
gem "omniauth"
gem "paper_trail"
gem "pry-rails"
gem "puma", "~> 3.7" # Use Puma as the app server
gem "rails", "~> 5.2.0"
gem "rails_admin"
gem "ransack"
gem "redis", "~> 4.0"
gem "rmagick"
gem "sass-rails", "~> 5.0"
gem "therubyracer", platforms: :ruby
gem "trailblazer"
gem "trailblazer-rails"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "unicorn"
gem "webpacker"
gem "wicked_pdf"
gem "wkhtmltopdf-binary"

gem "line-bot-api"
gem "slack-api"
gem "slack-notifier"

gem "html2slim"
gem "slim-rails"

group :development, :staging do
  gem "rubocop", "~> 0.55.0", require: false
end

group :development, :test do
  gem "addressable"
  gem "better_errors"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "fakeweb", github: "chrisk/fakeweb"
  gem "guard-rspec"
  gem "rack-mini-profiler"
  gem "rails-controller-testing"
  gem "rails_best_practices", require: false
  gem "rspec"
  gem "rspec-core"
  gem "rspec-expectations"
  gem "rspec-parameterized"
  gem "rspec-rails"
  gem "rspec-support"
  gem "spring-commands-rspec"
  gem "webmock"
end

group :test do
  gem "capybara"
  gem "database_cleaner"
  gem "faker"
  gem "launchy"
  gem "selenium-webdriver"
  gem "shoulda-matchers", require: false
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end
