# require 'minitest/autorun'
# require './lib/convert_hash_syntax'

# class ConvertHashSyntaxTest< Minitest::Test
#   def test_convert_hash_syntax
#     old_syntax = <<~TEXT
#       {
#         :name => 'Alice',
#         :age=>20,
#         :gender  =>  :female
#       }
#     TEXT
#     expected = <<~TEXT
#       {
#         name: 'Alice',
#         age: 20,
#         gender: :female
#       }
#     TEXT
#     # assert_equal expected, convert_hash_syntax(old_syntax)
#     actual = convert_hash_syntax(old_syntax)
#     puts actual
#     assert_equal expected, actual
#   end
# end

require 'minitest/autorun'
require './lib/convert_hash_syntax.rb'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    # assert_equal '{}' ,convert_hash_syntax('{}')
    # 変更前
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender =>  :female
      }
    TEXT
    # 変更後
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal  expected,convert_hash_syntax(old_syntax)
  end
end