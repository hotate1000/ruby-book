require 'minitest/autorun'
require './lib/effects.rb'

class EffextsTest < Minitest::Test
  def test_reverse
    assert Effects.test_reverse
    assert_equal 'ybuR si !nuf',effect.call('Ruby is fun!')
  end
end
