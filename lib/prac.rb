module NameChanger
  def change_name
    self.name = "geri"
  end
end

class User
  include NameChanger

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new("izumi")
p user.name
user.change_name
p user.name
