class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "#{name}, #{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    super + ", #{running_time}"
  end
end

product = Product.new('drama', 800)
dvd = DVD.new('drama', 800, 60)
p product.to_s
p dvd.to_s
