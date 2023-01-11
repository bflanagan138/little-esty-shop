require './app/github_runner.rb'

class ApplicationController < ActionController::Base
  $github_api = Github.new
end
