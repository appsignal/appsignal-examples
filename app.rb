require_relative "./worker"

MyWorker.perform_async("id" => rand(100 + 1))
