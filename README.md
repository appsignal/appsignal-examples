# AppSignal + Rails 5 + Delayed Job

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Delayed Job][delayed_job] in a [Rails][rails] 5 application.

Delayed Job integration is automatically activated when AppSignal starts, no
manual integration needed.

For more information about AppSignal support for Delayed Job, please see our
[Delayed Job documentation][docs].

## Usage

```
$ bin/rake db:migrate # Run migrations
$ bin/rake jobs:work # Start delayed job
$ bin/rails c # Start a Rails console

# Queue a normal Delayed Job job
> WelcomeMailJob.new.deliver("optional argument", :foo => "bar")
# Queue a normal Delayed Job job with an error
> ErrorJob.new.break_things("optional argument", :foo => "bar")

# Queue a Proc Delayed Job job
> WelcomeMailStructJob.new.deliver("optional argument", :foo => "bar")
# Queue a Proc Delayed Job job with an error
> ErrorStructJob.new.break_things("optional argument", :foo => "bar")

# Queue a new ActiveJob job
> ActiveJobWelcomeMailJob.perform_later("optional argument", :foo => "bar")
# Queue a new ActiveJob job with an error
> ActiveJobErrorJob.perform_later("optional argument", :foo => "bar")
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[delayed_job]: https://github.com/collectiveidea/delayed_job
[rails]: http://rubyonrails.org
[docs]: http://docs.appsignal.com/ruby/integrations/delayed-job.html
