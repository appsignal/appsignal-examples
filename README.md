# AppSignal + Sinatra

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Sinatra][sinatra].

See the `app.rb` file for how to integrate AppSignal in Sinatra.

## Usage

```
$ bundle exec rackup
```

Visit these URLs:

- http://localhost:9292/
- http://localhost:9292/slow
- http://localhost:9292/error

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[sinatra]: http://www.sinatrarb.com/
