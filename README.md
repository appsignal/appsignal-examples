# AppSignal examples

This repository contains a collection of example applications and integrations
that work with [AppSignal][appsignal-website].

## Examples

Each example lives in its own branch.

- Ruby: plain old Ruby app: [ruby](../../tree/ruby)
- Sinatra: [sinatra](../../tree/sinatra)
- Sinatra modular apps: [sinatra-modular](../../tree/sinatra-modular)
- Capistrano + dotenv: [capistrano+dotenv](../../tree/capistrano+dotenv)
- Capistrano + Figaro: [capistrano+figaro](../../tree/capistrano+figaro)

## Setup

1. Create an application on [AppSignal.com][appsignal-website].
2. Follow the installation procedure and get a "push API key".
3. Set the push API key in your terminal session, or prefix per example app.

```bash
export APPSIGNAL_PUSH_API_KEY=YOUR-KEY
# or
APPSIGNAL_PUSH_API_KEY=YOUR-KEY bundle exec some command
```

## Usage

1. Checkout the branch you need as listed in [Examples](#examples).
2. Read the README for that example application.

## Minimal setup per app

These example applications contain the least required amount of code as
possible to focus on the AppSignal integration. Use the code in the example to
modify your own application.

[appsignal-website]: https://appsignal.com/
