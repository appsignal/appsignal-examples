# AppSignal + Sinatra modular apps

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Sinatra][sinatra] using modular apps.

See the `app.rb` file for how to integrate AppSignal in Sinatra.

## Usage

```
$ bundle exec rackup
```

Visit these URLs:

- http://localhost:9292/
- http://localhost:9292/1/
- http://localhost:9292/2/
- http://localhost:9292/2/slow
- http://localhost:9292/2/error

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[sinatra]: http://www.sinatrarb.com/
