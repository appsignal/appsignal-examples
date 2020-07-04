class WelcomeMailer < ActionMailer::Base
  def welcome(*_args)
    mail(:to => "test@example.com", :subject => "Welcome to My Awesome Site")
  end
end
