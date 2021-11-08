def greeting(&block)
  puts "こんにちは"
  unless block.nil?
    text = block.call("おはよう")
    puts text
  end
  puts "こんばんわ"
end

# greeting
# # greeting do
# #   puts "おはよう"
# # end
#
# greeting do |text|
#   text * 2
# end

def greeting_ja(&block)
  texts = ["おはよう", "こんにちは", "こんばんわ"]
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ["good morning", "hello", "good evening"]
  greeting_common(texts, &block)
end

def greeting_common(texts, &block)
  puts block.call(texts[0])
end

greeting_ja do |text|
  text * 2
end

greeting_en do |text|
  text.upcase
end

greeting_en { |text| text * 2 }
