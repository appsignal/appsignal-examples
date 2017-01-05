# AppSignal + Grape

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Grape][sinatra].

See the `app.rb` file for how to integrate AppSignal in Grape.

## Usage

```
$ bundle exec rackup
```

Visit these URLs:

- http://localhost:9292/
- http://localhost:9292/slow
- http://localhost:9292/error
- http://localhost:9292/ping - Mounted app
- http://localhost:9292/users - Namespaced routes
- http://localhost:9292/users/slow
- http://localhost:9292/users/error
- http://localhost:9292/users/1 - `route_param` routes
- http://localhost:9292/users/1/slow
- http://localhost:9292/users/1/error

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[sinatra]: http://www.ruby-grape.org/
