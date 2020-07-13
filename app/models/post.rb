class Post < ApplicationRecord
  def self.archive_all(selector, options = {})
    sleep 1
    puts "archive_all: #{selector}, #{options}"
  end

  def send_welcome_mail(optional_argument = nil, options = {})
    sleep 1
    puts "deliver welcome mail: #{optional_argument}, #{options}"
  end
end
