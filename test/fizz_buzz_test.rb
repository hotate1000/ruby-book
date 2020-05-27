# require 'minitest/autorun'
# # テストコード読み込み
# require './lib/fizz_buzz.rb'

# class FizzBuzzTest < Minitest::Test
#   def test_fizzbuzz
#     assert_equal '1',        fizz_buzz(1)
#     assert_equal '2',        fizz_buzz(2)
#     assert_equal 'Fizz',     fizz_buzz(3)
#     assert_equal '4',        fizz_buzz(4)   
#     assert_equal 'Buzz',     fizz_buzz(5)
#     assert_equal 'Fizz',     fizz_buzz(6)
#     assert_equal 'FizzBuzz', fizz_buzz(15)
#   end
# end
# # テスティングフレームワークは他にRSpecやtest-unitがある



require 'minitest/autorun'
require './lib/fizz_buzz.rb'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz_test
    assert_equal '1'        , fizz_buzz(1)
    assert_equal '2'        , fizz_buzz(2)
    assert_equal 'Fizz'     , fizz_buzz(3)
    assert_equal 'Buzz'     , fizz_buzz(5)
    assert_equal 'FizzBuzz' , fizz_buzz(15)
    assert_equal '16'       , fizz_buzz(16)
  end
end