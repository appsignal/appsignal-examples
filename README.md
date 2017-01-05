# AppSignal + Capistrano + Figaro

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Capistrano][capistrano] while using [Figaro][figaro] to load
environment variables from `.env` files.

See the `Capfile` for how to require Figaro and AppSignal to load it properly.

There are some tests added to `config/deploy.rb`. Feel free to remove those in
your project.

## Usage

```
$ bundle exec cap production deploy
```

## Expected output

```
APPSIGNAL_PUSH_API_KEY=f9dc9fe7-ab7c-4d81-b6dd-dc6535a5261b
ENV var set successfully!
The next output should contain: Notifying Appsignal of deploy with
It can fail, if your API key is invalid, but the API key should be in the url it outputs.
Notifying Appsignal of deploy with: revision: , user: tom
Something went wrong while trying to notify Appsignal: 401 at https://push.appsignal.com/1/markers?api_key=f9dc9fe7-ab7c-4d81-b6dd-dc6535a5261b&name=Capist
rano+%2B+Figaro+test&environment=production&hostname=hostname.local&gem_version=1.3.6
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[capistrano]: http://capistranorb.com/
[figaro]: https://github.com/laserlemon/figaro/
