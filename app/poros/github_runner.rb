require 'httparty'
require 'json'
require 'pry'
require_relative './repo_name.rb'

class Github
  attr_reader :name

  def initialize
    @name = RepoName.new.name_parsed[:name]
  end
end

