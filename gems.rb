source 'https://rubygems.org'
ruby '2.6.1'

gem 'acts-as-taggable-on'
gem 'bootstrap-sass'
gem 'bootstrap-sass-extras'
gem 'chartkick'
gem 'cocoon'
gem 'devise'
gem 'font-awesome-sass', '4.7.0'
gem 'groupdate'
gem 'haml-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'kaminari'
gem 'pg', '~> 0.18'
gem 'pg_search'
gem 'puma', '~> 3.0'
gem 'rails'
gem 'sass-rails'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'simple_form'
gem 'turbolinks'
gem 'tzinfo-data'
gem 'uglifier'
gem 'validates_formatting_of'
gem 'therubyracer'

gem 'capistrano', '~> 3.7', '>= 3.7.1'
gem 'capistrano-rails', '~> 1.2'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rbenv', '~> 2.1'
gem 'faker'
gem 'rails_12factor', group: :production
gem 'selectize-rails'

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'rubocop', '~> 0.52.1'
end

group :test do
  gem 'database_cleaner'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-adminlte'
  gem 'rails-assets-bootstrap-daterangepicker'
  gem 'rails-assets-bootstrap-tokenfield'
  gem 'rails-assets-highcharts'
  gem 'rails-assets-jquery-ui'
  gem 'rails-assets-moment'
end