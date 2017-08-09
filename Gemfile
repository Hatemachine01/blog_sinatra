source :rubygems

# PostgreSQL driver
gem 'pg'

# Sinatra driver
gem 'sinatra'
gem 'sinatra-contrib'
gem 'puma',         '3.9.1'
# Use Thin for our web server
gem 'thin'

gem 'activesupport'
gem 'activerecord'
gem "bcrypt"
gem 'rake'

gem 'shotgun'

group :test do
  gem 'faker'
  gem 'rspec'
end


group :development, :test do

  gem 'byebug',  '9.0.0', platform: :mri
end



group :production do
  gem 'pg'
end
