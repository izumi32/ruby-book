require 'minitest/autorun'
require './lib/wordsynth.rb'
require './lib/effects.rb'

class WordSynthTest < Minitest::Test
  def test_play
    assert WordSynth
    assert Effects
  end
end
