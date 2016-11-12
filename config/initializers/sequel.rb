require "sequel"
DB = Sequel.sqlite

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
