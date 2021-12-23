class User

  puts "クラス直下#{self}"

  def foo
    puts "インスタンスメソッド#{self}"
  end

  def self.bar
    puts "クラスメソッド#{self}"
  end
end

user = User.new
user.foo
User.bar
