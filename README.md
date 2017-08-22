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

> WelcomeMailJob.new.deliver # Queue a new job
> ErrorJob.new.break_things # Queue a new job with an error
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[delayed_job]: https://github.com/collectiveidea/delayed_job
[rails]: http://rubyonrails.org
[docs]: http://docs.appsignal.com/ruby/integrations/delayed-job.html
