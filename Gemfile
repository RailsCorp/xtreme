source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'mysql2', '0.5.2'
gem 'puma', '~> 3.7' # Use Puma as the app server
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'bcrypt', '~> 3.1.7'
gem 'devise'
gem 'hashie'
gem 'grape'
gem 'grape-jbuilder'
gem 'capistrano-rails', group: :development  # Use Capistrano for deployment
gem 'bullet', group: :development
gem 'pry-rails'
gem 'kaminari'
gem 'cancancan', '~> 2.0'
gem 'rails_admin'
gem 'webpacker'
gem 'draper'
gem 'carrierwave'
gem 'i18n_generators'
gem 'enum_help'
gem 'paper_trail'
gem 'rmagick'

gem 'slack-api'
gem 'line-bot-api'

gem 'react-rails'

gem 'slim-rails'
gem 'html2slim'

group :development, :staging do
  gem 'rubocop', '~> 0.55.0', require: false
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
  gem 'fakeweb' , github: 'chrisk/fakeweb'
  gem 'rails-controller-testing'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
