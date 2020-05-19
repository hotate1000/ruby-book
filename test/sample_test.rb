require 'minitest/autorun'
# ライブラリーを読み込むためのコード
class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY','ruby'.upcase
  end


  def test_samplee
    assert_equal 'RUBY',null.capitalize
  end

  def test_sampleee
    assert_equal 'RUBY','ruby'.upcase
  end
end