require './app/poros/user_name.rb'
class UserNameSearch


  def repo_info
    response = HTTParty.get("https://api.github.com/repos/bflanagan138/little-esty-shop/contributors")  
    github_parsed = JSON.parse(response.body, symbolize_names: true)
    # require 'pry';binding.pry
  end
  
 

  def github_user_names
    not_team = ["mikedao", "jamisonordway", "cjsim89", "scottalexandra", "timomitchel", "BrianZanti"]
    new_data = self.repo_info.map do |data|
      UserName.new(data) unless not_team.include?(data[:login])
      end
      new_data.flatten
  end
end