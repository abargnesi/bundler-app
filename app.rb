# add :default gems in Gemfile to the load path
require 'rubygems'
require 'bundler'
Bundler.setup(:default)

# explicit requirements
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Hello world!\n"
  end
  #run! if app_file == $0
end
