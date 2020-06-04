# require 'minitest/autorun'
# require './lib/gate'
# require './lib/ticket'

# class GateTest < Minitest::Test

#   def setup
#     @umeda  = Gate.new(:umeda)
#     @juso   = Gate.new(:juso)
#     @mikuni = Gate.new(:mikuni)
#     # 駅名一覧
#   end

#   def test_umeda_to_juso
#     ticket = Ticket.new(150)
#     @umeda.enter(ticket)
#     assert @juso.exit(ticket)
#   end

#   def test_umeda_to_mikuni_when_fare_is_not_enough
#     ticket = Ticket.new(150)
#     @umeda.enter(ticket)
#     refute @mikuni.exit(ticket)
#   end

#   def test_umeda_to_mikuni_when_fare_is_enough
#     ticket = Ticket.new(190)
#     @umeda.enter(ticket)
#     assert @mikuni.exit(ticket)
#   end

#   def test_fuso_to_mikuni
#     ticket = Ticket.new(150)
#     @juso.enter(ticket)
#     assert @mikuni.exit(ticket)
#   end
# end


require 'minitest/autorun'
require './lib/gate.rb'

class GateTest < Minitest::Test
  def test_gate
    # 私は改札機です。umeda、jusoという名前(@name)を持っています。
    umeda  = Gate.new(umeda)
    juso   = Gate.new(juso)
    # 私は運賃です。150円という運賃(@fare)を持っています。
    ticket = Ticket.new(150)
    # umeda改札機に切符を挿入(enter)します。
    umeda.enter(ticket)

    assert juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    umeda   = Gate.new(umeda)
    mikuni  = Gate.new(mikuni)
    ticket  = Ticket.new(150)
    umeda.enter(ticket)

    refute mikuni.exit(ticket)
  end
end