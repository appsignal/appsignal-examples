# AppSignal + Rails 5 + Action Cable

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Action Cable][action_cable] in a [Rails][rails] 5 application.

Action Cable integration is automatically activated when AppSignal starts, no
manual integration needed.

## Usage

Install the application and start the Rails server.

```
$ bundle
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ rails s
```

Visit the following pages and start chatting.

- http://localhost:3000/channels/show
- http://localhost:3000/channels/broken (Intentionally broken example)

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[action_cable]: http://guides.rubyonrails.org/action_cable_overview.html
[rails]: http://rubyonrails.org
