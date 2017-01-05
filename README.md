# AppSignal + Rails 5 + Sequel

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Rails 5][rails] and [Sequel][sequel].

The Rails application uses the bare minimum of Rails frameworks for this
example. ActiveRecord is not present in this application.

## Usage

```
$ bundle exec rails s
```

Visit these URLs:

- http://localhost:3000/
- http://localhost:3000/slow
- http://localhost:3000/error

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[rails]: http://rubyonrails.org/
[sequel]: http://sequel.jeremyevans.net/
