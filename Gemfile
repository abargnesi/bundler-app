DIR = File.expand_path('..', __FILE__)

source "https://rubygems.org"
ruby File.read(File.join(DIR, '.ruby-version')).strip

gem "sinatra"

gem "pry", :group => [:development, :test]

group :test do
  gem "thin", :require => false
end
