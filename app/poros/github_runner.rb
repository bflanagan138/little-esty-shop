require 'httparty'
require 'json'
require 'pry'
require './poros/commit_search.rb'
require './poros/commit.rb'
require './poros/pull_request_search.rb'
require './poros/pull_request.rb'
require './poros/repo_name_search.rb'
require './poros/repo_name.rb'
require './poros/user_name_search.rb'
require './poros/user_name.rb'

commit_search  = CommitSearch.new
datas = commit_search.commit_information

@commit_count = datas[0][1][0][-15..-13].to_i
