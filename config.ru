require "./app"

map("/") { run API::Root }
map("/1") { run API::V1 }
map("/2") { run API::V2 }
