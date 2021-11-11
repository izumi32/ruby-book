require 'yaml'

yaml = <<TEXT
alice:
  name: "Alice"
  email: "alice@gmail.com"
  age: 20
TEXT

users = YAML.load(yaml)
p users["alice"]
p users["alice"]["name"]

users["alice"]["gender"] = :female

p YAML.dump(users)
