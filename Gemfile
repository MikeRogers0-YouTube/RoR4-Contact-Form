source 'https://rubygems.org'

# Stuff I added that I think we'll need

# Server jQuery from a CDN.
gem 'jquery-cdn', '2.1.3'
gem 'email_validator'

group :development do
  # Opens outgoing emails in browser
  gem 'letter_opener'
end

group :development, :test do
  # I perfer RSpec for tests
  gem 'rspec-rails'

  # Lets you jump around time, useful for testing time based bits.
  #gem 'timecop'

  # capybara's - for acceptance testing.
  gem 'capybara'
  gem 'capybara-email'
  gem 'launchy' # lets me use 'save_and_open_page' method

  # To test features with JS, use the webkit driver. 
  # Requires QT (can be installed via brew) https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit
  #gem 'capybara-webkit'
end

# Rails Default stuff that I kept in because it's useful.

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
