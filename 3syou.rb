require 'minitest/autorun'

class RubyTest < Minitest::Test
  def test_ruby_addition1
    assert_equal 3, 1+2
  end

  def test_ruby_addition2
    assert_equal 3, 1+1
  end
end