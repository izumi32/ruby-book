class User
  attr_reader :first_name
  attr_reader :last_name
  attr_reader :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{self.first_name}#{self.last_name}"
  end

end

user = User.new('izumi', 'kento', '28')
p user.first_name
p user.full_name
