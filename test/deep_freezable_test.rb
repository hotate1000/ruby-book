# require 'minitest/autorun'
# # require './lib/deep_freezable'
# require 'lib/bank'
# require 'lib/team'

# class DeepFreezableTest < Minitest::Test
#   def test_deep_freeze_to_array
#     assert_equal['japan','US','India'],Team::COUNTRIES
#     assert Team::COUNTRIES.frozen?
#     assert Team::COUNTRIES.all? {|countries|country.frozen?}
#   end
# end


require 'minitest/autorun'
require './lib/deep_freezable.rb'
require './lib/bank.rb'
require './lib/team.rb'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
  assert_equal ['Japan','US','India'],Team::COUNTRIES
  assert Team::COUNTRIES.frozen?
  assert Team::COUNTRIES.all?{|country| country.frozen?}
  end

  def test_deep_freeze_to_hash
    assert_equal({'Japan'=>'yen','US'=>'dollar','India'=>'rupee'},Bank::CURRENCIES)
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? {|key,value|key.frozen? && value.frozen?}
  end
end
