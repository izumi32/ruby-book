module Greeter

  def hello
    "hello"
  end
end

begin
  Greeter.hello
rescue => e
  puts e.class .superclass
  puts e.message
  puts e.backtrace
  p e
end

puts "終了"
