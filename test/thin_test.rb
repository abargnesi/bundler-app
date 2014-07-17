#!/usr/bin/env ruby

# require all :default and :test group gems defined in Gemfile
require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)

require_relative '../app.rb'

options = {
  :Host => '127.0.0.1',
  :Port => '8000'
}

Rack::Handler::Thin.run(App, options) do |server|
  Thread.new {
    sleep 2
    system("curl http://localhost:8000/")
    server.stop!
  }
end
