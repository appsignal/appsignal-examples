# AppSignal + Sidekiq app

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with standalone [Sidekiq].

AppSignal automatically integrates with Sidekiq, so there shouldn't really be
any manual integration necessary.

## Usage

```
# Start sidekiq
bundle exec sidekiq -r $(pwd)/worker.rb

# Send in new jobs
bundle exec ruby app.rb
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[Sidekiq]: https://github.com/mperham/sidekiq
