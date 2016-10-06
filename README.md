# AppSignal + Capistrano + dotenv

> This an example application. Please read this repositories [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Capistrano][capistrano] while using [dotenv][dotenv] to load
environment variables from `.env` files.

See the `Capfile` for how to require dotenv and AppSignal to load it
properly.

## Usage

```
$ bundle exec cap production deploy
```
