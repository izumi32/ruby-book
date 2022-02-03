module Loggable

  private

  def log(text)
    puts "LOG #{text}"
  end
end

class Product

  include Loggable

  def title
    log 'title is called'
    'A great muvie'
  end
end

product = Product.new
product.title

test_git ='test_git'
