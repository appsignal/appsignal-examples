# AppSignal examples

> ⚠️ This repo is no longer maintained. For a more up-to-date list of app, see
> the [appsignal/test-setups](https://github.com/appsignal/test-setups)
> repository.

This repository contains a collection of example applications and integrations
that work with [AppSignal][appsignal]. This list of applications is not
the complete list of frameworks and libraries integrates with, please see our
[documentation website][docs] for the complete list.

If you need more help, please contact us at [support@appsignal.com][contact].

- [AppSignal.com website][appsignal]
- [Documentation][docs]
- [Support][contact]

## Table of Contents

- List of example apps
  - [Ruby example apps](#ruby-example-apps)
  - [Elixir example apps](#elixir-example-apps)
- Usage documentation
  - [Setup](#setup)
  - [Usage](#usage)
    - [Minimal setup per app](#minimal-setup-per-app)
  - [Contributing](#contributing)

## Ruby example apps

Each example lives in its own branch.

- Ruby: plain old Ruby app: [ruby](../../tree/ruby)
- Ruby: custom background job: [custom-background-job](../../tree/custom-background-job)
- Ruby + Rake: [ruby-rake](../../tree/ruby-rake)
- Rails 5 + Delayed Job: [rails-5+delayed_job](../../tree/rails-5+delayed_job)
- Rails 5 + Resque - [rails-5+resque](../../tree/rails-5+resque)
- Rails 5 + Sidekiq: [rails-5+sidekiq](../../tree/rails-5+sidekiq)
- Rails 5 + Sequel: [rails-5+sequel](../../tree/rails-5+sequel)
- Rails 5 + Sequel - with manual instrumentation:
  [rails-5+sequel-manual-instrumentation](../../tree/rails-5+sequel-manual-instrumentation)
  For when extensions override the AppSignal Sequel instrumentation.
- Rails 5 + Que: [rails-5+que](../../tree/rails-5+que)
- Sidekiq: [sidekiq](../../tree/sidekiq)
- Sinatra: [sinatra](../../tree/sinatra)
- Sinatra modular apps: [sinatra-modular](../../tree/sinatra-modular)
- Padrino: [padrino](../../tree/padrino)
- Grape: [grape](../../tree/grape)
- Capistrano + dotenv: [capistrano+dotenv](../../tree/capistrano+dotenv)
- Capistrano + Figaro: [capistrano+figaro](../../tree/capistrano+figaro)
- Shoryuken: [shoryuken](../../tree/shoryuken)

## Elixir example apps

Currently the Elixir apps are not added to this repository, we have plans to do
so at a later time. For now you can refer to these repositories for Elixir
example apps:

- [AppSignal Elixir example](https://github.com/jeffkreeftmeijer/appsignal-elixir-example)
- [AppSignal Plug example](https://github.com/jeffkreeftmeijer/appsignal-plug-example)
- [AppSignal Phoenix example](https://github.com/jeffkreeftmeijer/appsignal-phoenix-example)
- [AppSignal Phoenix chat example](https://github.com/jeffkreeftmeijer/appsignal-phoenix-chat-example)

Each repository may have multiple branches with different scenarios and
configuration.

## Node.js example apps

Each example lives in its own branch.

- Express.js v4: [express](../../tree/express)

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

1. Checkout the branch you need as listed in [Examples](#ruby-example-apps).
2. Read the README for that example application.

### Minimal setup per app

These example applications contain the least required amount of code as
possible to focus on the AppSignal integration. Use the code in the example to
modify your own application.

## Contributing

If you want to contribute an application to our examples repository (thank
you!), please follow these steps:

1. Fork this repository.
2. Create a new branch with the application name.
   `git checkout --orphan branch-name`
   Use `+` to combine gems and `-` to indicate variations on other examples.
3. Add an example application.
4. Document the example application's along with its usage in the README.
5. Commit it with `Add [test app name] example`.
6. Install AppSignal in the application.
7. Commit it with `Install AppSignal`.
8. Send in an issue.
   Since PRs can only be merged in another branch, please send in issues
   pointing to your fork and we will include them manually.

Also see our [Contributing guide][contributing-guide] for more information.

[appsignal]: https://appsignal.com
[contact]: mailto:support@appsignal.com
[docs]: https://docs.appsignal.com
[contributing-guide]: https://docs.appsignal.com/contributing
