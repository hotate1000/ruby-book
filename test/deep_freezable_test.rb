require 'minitest/autorun'
# require './lib/deep_freezable'
require 'lib/bank'
require 'lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal['japan','US','India'],Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? {|countries|country.frozen?}
  end
end