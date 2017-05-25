source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.0"
gem "sqlite3"
gem "uglifier", ">= 1.3.0"

gem "delayed_job_active_record"
gem "daemons"

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
end
