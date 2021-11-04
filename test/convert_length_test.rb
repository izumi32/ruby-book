require 'minitest/autorun'
require './lib/convert_length.rb'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
    assert_equal 3.28, convert_length(1, from: :m, to: :ft)
  end
end
