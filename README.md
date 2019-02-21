# AppSignal + Rails 5 + Unicorn

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Unicorn][unicorn] in a [Rails][rails] 5 application.

## Usage

```
$ bundle install # Install gems
$ bin/rake db:migrate # Run migrations
$ bundle exec unicorn -c ./config/unicorn.rb
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[unicorn]: https://bogomips.org/unicorn/
[rails]: http://rubyonrails.org
