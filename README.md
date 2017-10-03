# AppSignal + Rails 5 + Resque app

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Resque] in a Rails app.

For more information on how to integrate AppSignal, see the [Resque docs page].

## Usage

```
# Start Resque
QUEUE=* bundle exec rake environment resque:work

# Send in new jobs
bundle exec rails console
Resque.enqueue(ErrorWorker, { foo: "bar" })
Resque.enqueue(SlowWorker, { foo: "bar" })
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[Resque]: https://github.com/resque/resque
[Resque docs page]: https://docs.appsignal.com/ruby/integrations/resque.html
