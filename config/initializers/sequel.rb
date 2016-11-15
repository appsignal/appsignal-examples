unless defined? DB
  # Load extension that overrides the AppSignal instrumentation. This is an
  # example. Other extensions might override it too.
  Sequel::Database.extension :error_sql

  # Manually load the instrumentation of sequel with AppSignal in combination
  # with an extension that overrides the AppSignal gem instrumentation on load.
  #
  # Make sure you set `instrument_sequel` to `false` in the AppSignal config.
  # http://docs.appsignal.com/ruby/configuration/
  #
  # Note: Use `Appsignal::Hooks::SequelLogExtension` for sequel version 4.34
  # and below.
  Sequel::Database.register_extension(
    :appsignal_integration,
    Appsignal::Hooks::SequelLogConnectionExtension
  )
  Sequel::Database.extension(:appsignal_integration)

  # Configuration
  DB = Sequel.sqlite
  Sequel::Model.db = DB
end

unless DB.table_exists? :items
  DB.create_table :items do
    primary_key :id
    String :name
    Float :price
  end

  items = DB[:items]
  items.insert(:name => "Soap", :price => 1)
  items.insert(:name => "Water", :price => 1234.567)
  items.insert(:name => "Cheese", :price => 2.95)
  items.insert(:name => "Stroopwaffles", :price => 10)
end
