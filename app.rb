require_relative "./worker"

ErrorWorker.perform_async({
  :name => "John Doe",
  :items => {
    :bag => ["rock", "water bottle", "matches"],
    :shoes => true,
    :hat => true
  }
}, "foobar")

SlowWorker.perform_async({
  :name => "Turtle",
  :items => {
    :bag => ["nothing"],
    :shoes => false,
    :hat => false
  }
}, "foobar")

DelayedExtensionWorker.delay.slow(:bar => "baz")
DelayedExtensionWorker.delay.error(:bar => "baz")

ActiveJobErrorWorker.perform_later "foo", { :foo => "bar" }
ActiveJobSlowWorker.perform_later "foo", { :foo => "bar" }
