lock "3.6.1"

set :application, "my_app_name"
set :repo_url, "git@example.com:me/my_repo.git"

# TESTS
# Strongly recommended you remove these in your project
puts "APPSIGNAL_PUSH_API_KEY=#{ENV["APPSIGNAL_PUSH_API_KEY"]}"

if ENV["APPSIGNAL_PUSH_API_KEY"]
  puts "ENV var set successfully!"
else
  puts "ENV var not set!"
end

puts "The next output should contain: Notifying Appsignal of deploy with"
puts "It can fail, if your API key is invalid, but the API key should be in the url it outputs."
