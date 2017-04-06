# AppSignal + Shoryuken

> This an example application. Please read this repository's [main
  README](../../blob/master/README.md) and then visit back here.

This example app demonstrates how to integrate the [appsignal][appsignal-gem]
gem with [Shoryuken][shoryuken].

See the `worker.rb` file for how to integrate AppSignal in Grape.

## Preparation

1. Create an [AWS account](https://aws.amazon.com).
2. Create a user with "Programmatic access"
3. Give the user permission to manage [SQS](https://aws.amazon.com/sqs/). For
   example the policy named: "AmazonSQSFullAccess".
4. Receive an "access key" and "secret access key" from AWS.

## Usage

Set your credentials in environment variables.

```
export APPSIGNAL_PUSH_API_KEY="your-push-api-key"
export AWS_REGION="eu-west-1" # Set your region of choice
export AWS_ACCESS_KEY_ID="access key"
export AWS_SECRET_ACCESS_KEY="secret_key"
```

Run the worker.

```
$ bundle exec shoryuken -r $(pwd)/worker.rb -C shoryuken.yml
```

And queue messages for the worker to process.

```
# Trigger a message in another window.
# Make sure to also set the env vars
$ bundle exec ruby app.rb
```

[appsignal-gem]: https://github.com/appsignal/appsignal-ruby
[shoryuken]: https://github.com/phstc/shoryuken
