# AppSignal + Rails 5 + Que

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [que][que] in a [Rails][rails] 5 application.

Que integration is automatically activated when AppSignal starts, no manual
integration needed.

## Usage

```
$ export APPSIGNAL_PUSH_API_KEY="<API KEY>"

$ bin/rake db:create db:migrate # Run migrations
$ bundle exec que ./config/environment.rb # Start Que
$ bin/rails c # Start a Rails console

# Queue a normal Que job
> SlowJob.enqueue(foo: "bar")
# Queue a normal Que job with an error
> ErrorJob.enqueue(foo: "bar")

# Queue a new ActiveJob job
> ActiveJobWelcomeMailJob.perform_later("optional argument", :foo => "bar")
# Queue a new ActiveJob job with an error
> ActiveJobErrorJob.perform_later("optional argument", :foo => "bar")
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[que]: https://github.com/chanks/que
[rails]: http://rubyonrails.org
