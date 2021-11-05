class Greeter

  def hello
    raise "無効なメソッド"
  end
end

greeter = Greeter.new
greeter.hello
