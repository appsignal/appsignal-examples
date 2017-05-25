class User < ActiveRecord::Base
  def do_stuff!
    self.email = "#{SecureRandom.uuid}@foo.com"
    save!
  end
end
