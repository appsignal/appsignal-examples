# AppSignal + Padrino app

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Padrino][padrino].

See the `app.rb` file for how to integrate AppSignal in Padrino.

## Usage

```
$ bundle exec rackup
```

Visit these URLs:

- http://localhost:9292/
- http://localhost:9292/slow
- http://localhost:9292/error
- http://localhost:9292/foo/slow
- http://localhost:9292/foo/error
- http://localhost:9292/foo/something/:id
- http://localhost:9292/foo/bar
- http://localhost:9292/foo/baz/:id
- http://localhost:9292/foo/:id/boo
- http://localhost:9292/foo/:id/boo/slow
- http://localhost:9292/foo/:id/boo/error

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[sinatra]: http://padrinorb.com/
