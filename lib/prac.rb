class Product
  attr_reader :name, :price
  DEFAULT_PRICE = 0

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
