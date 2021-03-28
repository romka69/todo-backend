source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'pg'
gem 'puma', '~> 4.1'
gem 'rack-cors'
gem 'redis', '~> 4.0'

gem 'bootsnap', '>= 1.4.2', require: false

gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
