# AppSignal + Rails 5 + Fast Json

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [FastJson][fastjson] in a [Rails][rails] 5 application.

Sidekiq integration is automatically activated when AppSignal starts, no
manual integration needed.

For more information about AppSignal support for Sidekiq, please see our
[Sidekiq documentation][docs].

## Usage

```
$ bundle install # Install gems
$ bin/rails s # Start a Rails server
```

Update appsignal.yml with your API Key

Visit `http://localhost:3000`, this should render a JSON file.

Visit appsignal.com and therer should be a new app containing a performance sample with fast-json instrumentation.

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[fastjson]: https://github.com/Netflix/fast_jsonapi
[rails]: http://rubyonrails.org
