# AppSignal + Rails 5 + Sidekiq

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Sidekiq][sidekiq] in a [Rails][rails] 5 application.

Sidekiq integration is automatically activated when AppSignal starts, no
manual integration needed.

For more information about AppSignal support for Sidekiq, please see our
[Sidekiq documentation][docs].

## Usage

```
$ bundle install # Install gems
$ bin/rake db:migrate # Run migrations
$ bundle exec sidekiq # Start Sidekiq
$ bin/rails c # Start a Rails console

# Queue a normal Sidekiq
> WelcomeMailJob.perform_async("optional argument", :foo => "bar")
# Queue a normal Sidekiq an error
> ErrorJob.perform_async("optional argument", :foo => "bar")

# Queue a new ActiveJob job
> ActiveJobWelcomeMailJob.perform_later("optional argument", :foo => "bar")
# Queue a new ActiveJob job with an error
> ActiveJobErrorJob.perform_later("optional argument", :foo => "bar")

# Queue a job on an ActiveRecord model instance
> user = User.create(:name => "John")
> user.delay.do_stuff!
# Wait for the job to complete and reload the user
> user.reload
# User should now have an email address
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[sidekiq]: https://github.com/mperham/sidekiq
[rails]: http://rubyonrails.org
[docs]: http://docs.appsignal.com/ruby/integrations/sidekiq.html
